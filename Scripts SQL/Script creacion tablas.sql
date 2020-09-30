CREATE TABLE [dbo].[Compra_Venta_Divisa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Monto_Adquirido] [money] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Divisa_Comprada] [int] NOT NULL,
	[Divisa_Vendida] [int] NOT NULL,
	[Comision] [float] NOT NULL,
	[Monto_Vendido] [money] NOT NULL,
	[Cuenta] [int] NOT NULL,
 CONSTRAINT [PK_Compra_Venta_Divisa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Saldo] [money] NOT NULL,
	[Tipo_Cuenta] [int] NOT NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Divisa]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
	[Tipo_Moneda] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Divisa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inversion]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inversion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [money] NOT NULL,
	[Fecha_Inicio] [date] NOT NULL,
	[Fecha_Fin] [date] NULL,
	[TIpo_Inversion] [int] NOT NULL,
	[Cuenta] [int] NOT NULL,
 CONSTRAINT [PK_Inversion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimiento]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimiento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [money] NOT NULL,
	[Cuenta] [int] NOT NULL,
	[Tipo_Movimiento] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Movimiento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [money] NOT NULL,
	[Tipo] [int] NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Cuenta] [int] NOT NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Situacion_Crediticia]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Situacion_Crediticia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Situacion_Crediticia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cuenta]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Cuenta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
	[Divisa] [int] NOT NULL,
 CONSTRAINT [PK_Tipo_Cuenta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Inversion]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Inversion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Tipo_Inversion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Moneda]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Moneda](
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Tipo_Moneda] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Movimiento]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Movimiento](
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Tipo_Movimiento] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Servicio]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Servicio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Tipo_Servicio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transferencia]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transferencia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [money] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Cuenta_Origen] [int] NOT NULL,
	[Cuenta_Destino] [int] NOT NULL,
 CONSTRAINT [PK_Transferencia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30/09/2020 10:09:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[DNI] [int] NOT NULL,
	[Situacion_Crediticia] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compra_Venta_Divisa]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Venta_Divisa_Cuenta] FOREIGN KEY([Cuenta])
REFERENCES [dbo].[Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Compra_Venta_Divisa] CHECK CONSTRAINT [FK_Compra_Venta_Divisa_Cuenta]
GO
ALTER TABLE [dbo].[Compra_Venta_Divisa]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Venta_Divisa_Divisa] FOREIGN KEY([Divisa_Vendida])
REFERENCES [dbo].[Divisa] ([ID])
GO
ALTER TABLE [dbo].[Compra_Venta_Divisa] CHECK CONSTRAINT [FK_Compra_Venta_Divisa_Divisa]
GO
ALTER TABLE [dbo].[Compra_Venta_Divisa]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Venta_Divisa_Divisa1] FOREIGN KEY([Divisa_Comprada])
REFERENCES [dbo].[Divisa] ([ID])
GO
ALTER TABLE [dbo].[Compra_Venta_Divisa] CHECK CONSTRAINT [FK_Compra_Venta_Divisa_Divisa1]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Cuenta] FOREIGN KEY([Tipo_Cuenta])
REFERENCES [dbo].[Tipo_Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Tipo_Cuenta]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Usuario]
GO
ALTER TABLE [dbo].[Divisa]  WITH CHECK ADD  CONSTRAINT [FK_Divisa_Tipo_Moneda] FOREIGN KEY([Tipo_Moneda])
REFERENCES [dbo].[Tipo_Moneda] ([Nombre])
GO
ALTER TABLE [dbo].[Divisa] CHECK CONSTRAINT [FK_Divisa_Tipo_Moneda]
GO
ALTER TABLE [dbo].[Inversion]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta] FOREIGN KEY([Cuenta])
REFERENCES [dbo].[Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Inversion] CHECK CONSTRAINT [FK_Cuenta]
GO
ALTER TABLE [dbo].[Inversion]  WITH CHECK ADD  CONSTRAINT [FK_Inversion] FOREIGN KEY([TIpo_Inversion])
REFERENCES [dbo].[Tipo_Inversion] ([ID])
GO
ALTER TABLE [dbo].[Inversion] CHECK CONSTRAINT [FK_Inversion]
GO
ALTER TABLE [dbo].[Movimiento]  WITH CHECK ADD  CONSTRAINT [FK_Movimiento_Cuenta] FOREIGN KEY([Cuenta])
REFERENCES [dbo].[Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Movimiento] CHECK CONSTRAINT [FK_Movimiento_Cuenta]
GO
ALTER TABLE [dbo].[Movimiento]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Movimiento] FOREIGN KEY([Tipo_Movimiento])
REFERENCES [dbo].[Tipo_Movimiento] ([Nombre])
GO
ALTER TABLE [dbo].[Movimiento] CHECK CONSTRAINT [FK_Tipo_Movimiento]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Cuenta] FOREIGN KEY([Cuenta])
REFERENCES [dbo].[Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Cuenta]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Servicio] FOREIGN KEY([Tipo])
REFERENCES [dbo].[Tipo_Servicio] ([ID])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Tipo_Servicio]
GO
ALTER TABLE [dbo].[Tipo_Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Cuenta_Divisa] FOREIGN KEY([Divisa])
REFERENCES [dbo].[Divisa] ([ID])
GO
ALTER TABLE [dbo].[Tipo_Cuenta] CHECK CONSTRAINT [FK_Tipo_Cuenta_Divisa]
GO
ALTER TABLE [dbo].[Transferencia]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Destino] FOREIGN KEY([Cuenta_Destino])
REFERENCES [dbo].[Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Transferencia] CHECK CONSTRAINT [FK_Cuenta_Destino]
GO
ALTER TABLE [dbo].[Transferencia]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Origen] FOREIGN KEY([Cuenta_Origen])
REFERENCES [dbo].[Cuenta] ([ID])
GO
ALTER TABLE [dbo].[Transferencia] CHECK CONSTRAINT [FK_Cuenta_Origen]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Situacion_Crediticia] FOREIGN KEY([Situacion_Crediticia])
REFERENCES [dbo].[Situacion_Crediticia] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Situacion_Crediticia]
GO
