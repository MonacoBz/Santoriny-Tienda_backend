package com.app.santorini.service.principales;

import com.app.santorini.dto.principales.ventas.VentaDRequestDto;
import com.app.santorini.dto.principales.ventas.VentaRequestDto;
import com.app.santorini.entity.basico.Categoria;
import com.app.santorini.entity.basico.TipoAlimento;
import com.app.santorini.entity.basico.Unidad;
import com.app.santorini.entity.principales.Producto;
import com.app.santorini.entity.principales.Venta;
import com.app.santorini.entity.principales.VentaDetalle;
import com.app.santorini.exceptions.ProductoException;
import com.app.santorini.exceptions.VentaException;
import com.app.santorini.repository.basicos.UnidadRepository;
import com.app.santorini.repository.principales.ProductoRepository;
import com.app.santorini.repository.principales.VentaRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import static org.mockito.Mockito.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
class VentaServiceTest {

    @Mock
    private VentaRepository repository;

    @Mock
    private ProductoRepository repositoryProducto;

    @Mock
    private UnidadRepository repositoryUnidad;

    @InjectMocks
    private VentaService service;

    private VentaRequestDto ventaRequestDto;
    private Producto producto;
    private VentaDetalle ventaDetalle;

    @BeforeEach
    void setUp() {
        final VentaDRequestDto detalleDto = new VentaDRequestDto(1l, BigDecimal.valueOf(1.0), BigDecimal.valueOf(25.0));
        final Categoria categoria = new Categoria(1l, "Croquetas");
        final TipoAlimento tipoAlimento = new TipoAlimento(1l, "Perro");
        final Unidad unidad = new Unidad(1l, "Kg(s)");
        producto = new Producto(1l, "Producto1", BigDecimal.valueOf(25.0), true, categoria, tipoAlimento, unidad);
        ventaDetalle = new VentaDetalle(1l, null, producto, unidad, BigDecimal.valueOf(1.0), BigDecimal.valueOf(25.0));
        ventaRequestDto = new VentaRequestDto(
                1L,
                LocalDate.now(),
                List.of(detalleDto),
                "TARJETA",
                BigDecimal.valueOf(25.0)
        );

    }

    @Nested
    @DisplayName("Create venta tests")
    class CreateVenta {

        @Test
        @DisplayName("Should create a new venta")
        void shouldCreateAVenta() {
            //given
            final long id = 1l;
            //when
            when(repositoryProducto.findById(id)).thenReturn(Optional.of(producto));
            service.create(ventaRequestDto);
            //then
            verify(repositoryProducto, times(1)).findById(id);
            verify(repository, times(1)).save(any(Venta.class));
        }

        @Test
        @DisplayName("Should thron a ProductException")
        void shouldThrowProductException() {
            final long idInexistente = 10L;


            final VentaDRequestDto detalleDto = new VentaDRequestDto(idInexistente, BigDecimal.valueOf(1.0), BigDecimal.valueOf(25.0));
            final VentaRequestDto dtoProductoInexistente = new VentaRequestDto(
                    1L,
                    LocalDate.now(),
                    List.of(detalleDto),
                    "TARJETA",
                    BigDecimal.valueOf(25.0)
            );
            when(repositoryProducto.findById(idInexistente)).thenReturn(Optional.empty());
            final ProductoException exception = assertThrows(ProductoException.class, () -> service.create(dtoProductoInexistente));

            verify(repositoryProducto).findById(idInexistente);
            verifyNoInteractions(repository);
            assertEquals("No existe el producto con el id: " + idInexistente, exception.getMessage());
        }
    }

    @Nested
    @DisplayName("Delete venta tests")
    class DeleteVenta {

        @Test
        @DisplayName("Should set active to false")
        void shouldDeleteVenta() {
            long id = 1L;
            when(repository.existsById(id)).thenReturn(true);
            service.delete(id);

            verify(repository, times(1)).existsById(id);
            verify(repository, times(1)).deleteById(id);
        }

        @Test
        @DisplayName("Should throw a VentaException")
        void shouldThrowVentaException() {
            long id = 1L;
            when(repository.existsById(id)).thenReturn(false);
            final VentaException exception = assertThrows(VentaException.class,
                    () -> service.delete(id));

            verify(repository, times(1)).existsById(id);
            verify(repository, times(0)).deleteById(id);
            assertEquals("No existe la venta con el id: " + id, exception.getMessage());
        }
    }

    @Nested
    @DisplayName("Update venta tests")
    class UpdateVenta{

        @Test
        @DisplayName("Should update venta")
        void shouldUpdateVenta(){
            final Venta v = new Venta(1l,
                    LocalDate.now(),
                    BigDecimal.valueOf(25.0),
                    "TARJETA",
                    BigDecimal.valueOf(50.0),
                    BigDecimal.valueOf(25.0),
                    BigDecimal.ZERO,
                    List.of(ventaDetalle));
            final long idP = 1l;

            when(repository.findById(ventaRequestDto.id())).thenReturn(Optional.of(v));
            when(repositoryProducto.findById(idP)).thenReturn(Optional.of(producto));
            service.update(ventaRequestDto);

            verify(repository).findById(ventaRequestDto.id());
            verify(repository).save(any(Venta.class));

        }

        @Test
        @DisplayName("Should throw Venta Exception with empty venta")
        void shouldThronVentaExceptionWithEmptyVenta(){

            final Venta v = new Venta(1l,
                    LocalDate.now(),
                    BigDecimal.valueOf(25.0),
                    "TARJETA",
                    BigDecimal.valueOf(50.0),
                    BigDecimal.valueOf(25.0),
                    BigDecimal.ZERO,
                    List.of(ventaDetalle));

            when(repository.findById(ventaRequestDto.id())).thenReturn(Optional.empty());


            final VentaException exception = assertThrows(VentaException.class, () -> service.update(ventaRequestDto));

            verify(repository).findById(ventaRequestDto.id());
            verify(repository,times(0)).save(any(Venta.class));
            assertEquals("No existe la venta con el id: " + ventaRequestDto.id(), exception.getMessage());
        }


        @Test
        @DisplayName("Should throw Venta Exception inside try-cath")
        void shouldThronVentaExceptionTryCatch(){

            final Venta v = new Venta(1l,
                    LocalDate.now(),
                    BigDecimal.valueOf(25.0),
                    "TARJETA",
                    BigDecimal.valueOf(50.0),
                    BigDecimal.valueOf(25.0),
                    BigDecimal.ZERO,
                    List.of(ventaDetalle));

            final long idP = 1l;
            when(repository.findById(ventaRequestDto.id())).thenReturn(Optional.of(v));
            when(repositoryProducto.findById(idP)).thenReturn(Optional.empty());

            final VentaException exception = assertThrows(VentaException.class, () -> service.update(ventaRequestDto));

            verify(repository).findById(ventaRequestDto.id());
            verify(repository,times(0)).save(any(Venta.class));
            assertEquals("No se pudo actualizar la venta : No existe el producto con el id: " + idP, exception.getMessage());
        }
    }

    @Nested
    @DisplayName("Get venta(s) tests")
    class GetVenta{

        @Test
        @DisplayName("Should get a venta by id")
        void shouldGetVentaById(){
            final Venta v = new Venta(1l,
                    LocalDate.now(),
                    BigDecimal.valueOf(25.0),
                    "TARJETA",
                    BigDecimal.valueOf(50.0),
                    BigDecimal.valueOf(25.0),
                    BigDecimal.ZERO,
                    List.of(ventaDetalle));
            final long ventaId = 1l;

            when(repository.findById(ventaId)).thenReturn(Optional.of(v));

            service.getById(ventaId);

            verify(repository).findById(ventaId);
        }

        @Test
        @DisplayName("Should throw a VentaException when there is not a venta with the given id")
        void shouldThrowVentaExceptionWhenNoId(){
            final Venta v = new Venta(1l,
                    LocalDate.now(),
                    BigDecimal.valueOf(25.0),
                    "TARJETA",
                    BigDecimal.valueOf(50.0),
                    BigDecimal.valueOf(25.0),
                    BigDecimal.ZERO,
                    List.of(ventaDetalle));
            final long ventaId = 2l;

            when(repository.findById(ventaId)).thenReturn(Optional.empty());


            final VentaException exception = assertThrows(VentaException.class,() -> service.getById(ventaId));

            verify(repository).findById(ventaId);
            assertEquals("No existe la venta con el id : " + ventaId, exception.getMessage());
        }

        @Test
        @DisplayName("Should get a list of venta")
        void shouldGetAListOfVenta(){
            List<Venta> ventas = List.of(
                    new Venta(1l,
                    LocalDate.now(),
                    BigDecimal.valueOf(25.0),
                    "TARJETA",
                    BigDecimal.valueOf(50.0),
                    BigDecimal.valueOf(25.0),
                    BigDecimal.ZERO,
                    List.of(ventaDetalle)),
                    new Venta(2l,
                            LocalDate.now(),
                            BigDecimal.valueOf(25.0),
                            "TARJETA",
                            BigDecimal.valueOf(50.0),
                            BigDecimal.valueOf(25.0),
                            BigDecimal.ZERO,
                            List.of(ventaDetalle)));

            when(repository.findAll()).thenReturn(ventas);

            service.getAll();

            verify(repository).findAll();
        }
    }
}

