	component soc_system is
		port (
			button_pio_export                     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			clk_clk                               : in    std_logic                     := 'X';             -- clk
			clk_66m_clk                           : in    std_logic                     := 'X';             -- clk
			hps_0_h2f_reset_reset_n               : out   std_logic;                                        -- reset_n
			hps_0_hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_0_hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_0_hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_0_hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_0_hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_0_hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_0_hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_0_hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_0_hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_0_hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_0_hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_0_hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_0_hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_0_hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_0_hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_0_hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_0_hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_0_hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_0_hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_0_hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D0      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
			hps_0_hps_io_hps_io_usb1_inst_D1      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
			hps_0_hps_io_hps_io_usb1_inst_D2      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
			hps_0_hps_io_hps_io_usb1_inst_D3      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D4      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
			hps_0_hps_io_hps_io_usb1_inst_D5      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
			hps_0_hps_io_hps_io_usb1_inst_D6      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
			hps_0_hps_io_hps_io_usb1_inst_D7      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
			hps_0_hps_io_hps_io_usb1_inst_CLK     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
			hps_0_hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                        -- hps_io_usb1_inst_STP
			hps_0_hps_io_hps_io_usb1_inst_DIR     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
			hps_0_hps_io_hps_io_usb1_inst_NXT     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
			hps_0_hps_io_hps_io_spim1_inst_CLK    : out   std_logic;                                        -- hps_io_spim1_inst_CLK
			hps_0_hps_io_hps_io_spim1_inst_MOSI   : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
			hps_0_hps_io_hps_io_spim1_inst_MISO   : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
			hps_0_hps_io_hps_io_spim1_inst_SS0    : out   std_logic;                                        -- hps_io_spim1_inst_SS0
			hps_0_hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_0_hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_0_hps_io_hps_io_i2c0_inst_SDA     : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
			hps_0_hps_io_hps_io_i2c0_inst_SCL     : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
			hps_0_hps_io_hps_io_i2c1_inst_SDA     : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
			hps_0_hps_io_hps_io_i2c1_inst_SCL     : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
			hps_0_hps_io_hps_io_gpio_inst_GPIO09  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
			hps_0_hps_io_hps_io_gpio_inst_GPIO34  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO34
			hps_0_hps_io_hps_io_gpio_inst_GPIO35  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
			hps_0_hps_io_hps_io_gpio_inst_GPIO40  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
			hps_0_hps_io_hps_io_gpio_inst_GPIO53  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
			hps_0_hps_io_hps_io_gpio_inst_GPIO54  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
			hps_0_hps_io_hps_io_gpio_inst_GPIO61  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO61
			i2c_0_scl                             : inout std_logic                     := 'X';             -- scl
			i2c_0_sda                             : inout std_logic                     := 'X';             -- sda
			led_pio_export                        : out   std_logic_vector(7 downto 0);                     -- export
			master_ctrl_control_user_base         : out   std_logic_vector(31 downto 0);                    -- control_user_base
			master_ctrl_control_en                : out   std_logic_vector(1 downto 0);                     -- control_en
			master_ctrl_control_go                : out   std_logic;                                        -- control_go
			master_ctrl_control_state             : in    std_logic                     := 'X';             -- control_state
			master_ctrl_control_user_length       : out   std_logic_vector(31 downto 0);                    -- control_user_length
			master_write_reset_1_reset            : in    std_logic                     := 'X';             -- reset
			memory_mem_a                          : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                         : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                         : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                       : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                        : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                       : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                      : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                      : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                       : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                    : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                         : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                      : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                        : out   std_logic;                                        -- mem_odt
			memory_mem_dm                         : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                      : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n                         : in    std_logic                     := 'X';             -- reset_n
			spi_0_MISO                            : in    std_logic                     := 'X';             -- MISO
			spi_0_MOSI                            : out   std_logic;                                        -- MOSI
			spi_0_SCLK                            : out   std_logic;                                        -- SCLK
			spi_0_SS_n                            : out   std_logic;                                        -- SS_n
			switch_pio_export                     : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			uart_0_rxd                            : in    std_logic                     := 'X';             -- rxd
			uart_0_txd                            : out   std_logic;                                        -- txd
			video_tft_vid_clk                     : in    std_logic                     := 'X';             -- vid_clk
			video_tft_vid_data                    : out   std_logic_vector(31 downto 0);                    -- vid_data
			video_tft_underflow                   : out   std_logic;                                        -- underflow
			video_tft_vid_datavalid               : out   std_logic;                                        -- vid_datavalid
			video_tft_vid_v_sync                  : out   std_logic;                                        -- vid_v_sync
			video_tft_vid_h_sync                  : out   std_logic;                                        -- vid_h_sync
			video_tft_vid_f                       : out   std_logic;                                        -- vid_f
			video_tft_vid_h                       : out   std_logic;                                        -- vid_h
			video_tft_vid_v                       : out   std_logic;                                        -- vid_v
			write_control_fixed_location          : in    std_logic                     := 'X';             -- fixed_location
			write_control_write_base              : in    std_logic_vector(31 downto 0) := (others => 'X'); -- write_base
			write_control_write_length            : in    std_logic_vector(31 downto 0) := (others => 'X'); -- write_length
			write_control_go                      : in    std_logic                     := 'X';             -- go
			write_control_done                    : out   std_logic;                                        -- done
			write_user_write_buffer               : in    std_logic                     := 'X';             -- write_buffer
			write_user_buffer_input_data          : in    std_logic_vector(31 downto 0) := (others => 'X'); -- buffer_input_data
			write_user_buffer_full                : out   std_logic;                                        -- buffer_full
			pwm_wire                              : out   std_logic                                         -- wire
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			button_pio_export                     => CONNECTED_TO_button_pio_export,                     --           button_pio.export
			clk_clk                               => CONNECTED_TO_clk_clk,                               --                  clk.clk
			clk_66m_clk                           => CONNECTED_TO_clk_66m_clk,                           --              clk_66m.clk
			hps_0_h2f_reset_reset_n               => CONNECTED_TO_hps_0_h2f_reset_reset_n,               --      hps_0_h2f_reset.reset_n
			hps_0_hps_io_hps_io_emac1_inst_TX_CLK => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TX_CLK, --         hps_0_hps_io.hps_io_emac1_inst_TX_CLK
			hps_0_hps_io_hps_io_emac1_inst_TXD0   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD0,   --                     .hps_io_emac1_inst_TXD0
			hps_0_hps_io_hps_io_emac1_inst_TXD1   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD1,   --                     .hps_io_emac1_inst_TXD1
			hps_0_hps_io_hps_io_emac1_inst_TXD2   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD2,   --                     .hps_io_emac1_inst_TXD2
			hps_0_hps_io_hps_io_emac1_inst_TXD3   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD3,   --                     .hps_io_emac1_inst_TXD3
			hps_0_hps_io_hps_io_emac1_inst_RXD0   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD0,   --                     .hps_io_emac1_inst_RXD0
			hps_0_hps_io_hps_io_emac1_inst_MDIO   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_MDIO,   --                     .hps_io_emac1_inst_MDIO
			hps_0_hps_io_hps_io_emac1_inst_MDC    => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_MDC,    --                     .hps_io_emac1_inst_MDC
			hps_0_hps_io_hps_io_emac1_inst_RX_CTL => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RX_CTL, --                     .hps_io_emac1_inst_RX_CTL
			hps_0_hps_io_hps_io_emac1_inst_TX_CTL => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TX_CTL, --                     .hps_io_emac1_inst_TX_CTL
			hps_0_hps_io_hps_io_emac1_inst_RX_CLK => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RX_CLK, --                     .hps_io_emac1_inst_RX_CLK
			hps_0_hps_io_hps_io_emac1_inst_RXD1   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD1,   --                     .hps_io_emac1_inst_RXD1
			hps_0_hps_io_hps_io_emac1_inst_RXD2   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD2,   --                     .hps_io_emac1_inst_RXD2
			hps_0_hps_io_hps_io_emac1_inst_RXD3   => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD3,   --                     .hps_io_emac1_inst_RXD3
			hps_0_hps_io_hps_io_sdio_inst_CMD     => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_CMD,     --                     .hps_io_sdio_inst_CMD
			hps_0_hps_io_hps_io_sdio_inst_D0      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D0,      --                     .hps_io_sdio_inst_D0
			hps_0_hps_io_hps_io_sdio_inst_D1      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D1,      --                     .hps_io_sdio_inst_D1
			hps_0_hps_io_hps_io_sdio_inst_CLK     => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_CLK,     --                     .hps_io_sdio_inst_CLK
			hps_0_hps_io_hps_io_sdio_inst_D2      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D2,      --                     .hps_io_sdio_inst_D2
			hps_0_hps_io_hps_io_sdio_inst_D3      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D3,      --                     .hps_io_sdio_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D0      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D0,      --                     .hps_io_usb1_inst_D0
			hps_0_hps_io_hps_io_usb1_inst_D1      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D1,      --                     .hps_io_usb1_inst_D1
			hps_0_hps_io_hps_io_usb1_inst_D2      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D2,      --                     .hps_io_usb1_inst_D2
			hps_0_hps_io_hps_io_usb1_inst_D3      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D3,      --                     .hps_io_usb1_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D4      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D4,      --                     .hps_io_usb1_inst_D4
			hps_0_hps_io_hps_io_usb1_inst_D5      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D5,      --                     .hps_io_usb1_inst_D5
			hps_0_hps_io_hps_io_usb1_inst_D6      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D6,      --                     .hps_io_usb1_inst_D6
			hps_0_hps_io_hps_io_usb1_inst_D7      => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D7,      --                     .hps_io_usb1_inst_D7
			hps_0_hps_io_hps_io_usb1_inst_CLK     => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_CLK,     --                     .hps_io_usb1_inst_CLK
			hps_0_hps_io_hps_io_usb1_inst_STP     => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_STP,     --                     .hps_io_usb1_inst_STP
			hps_0_hps_io_hps_io_usb1_inst_DIR     => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_DIR,     --                     .hps_io_usb1_inst_DIR
			hps_0_hps_io_hps_io_usb1_inst_NXT     => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_NXT,     --                     .hps_io_usb1_inst_NXT
			hps_0_hps_io_hps_io_spim1_inst_CLK    => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_CLK,    --                     .hps_io_spim1_inst_CLK
			hps_0_hps_io_hps_io_spim1_inst_MOSI   => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_MOSI,   --                     .hps_io_spim1_inst_MOSI
			hps_0_hps_io_hps_io_spim1_inst_MISO   => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_MISO,   --                     .hps_io_spim1_inst_MISO
			hps_0_hps_io_hps_io_spim1_inst_SS0    => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_SS0,    --                     .hps_io_spim1_inst_SS0
			hps_0_hps_io_hps_io_uart0_inst_RX     => CONNECTED_TO_hps_0_hps_io_hps_io_uart0_inst_RX,     --                     .hps_io_uart0_inst_RX
			hps_0_hps_io_hps_io_uart0_inst_TX     => CONNECTED_TO_hps_0_hps_io_hps_io_uart0_inst_TX,     --                     .hps_io_uart0_inst_TX
			hps_0_hps_io_hps_io_i2c0_inst_SDA     => CONNECTED_TO_hps_0_hps_io_hps_io_i2c0_inst_SDA,     --                     .hps_io_i2c0_inst_SDA
			hps_0_hps_io_hps_io_i2c0_inst_SCL     => CONNECTED_TO_hps_0_hps_io_hps_io_i2c0_inst_SCL,     --                     .hps_io_i2c0_inst_SCL
			hps_0_hps_io_hps_io_i2c1_inst_SDA     => CONNECTED_TO_hps_0_hps_io_hps_io_i2c1_inst_SDA,     --                     .hps_io_i2c1_inst_SDA
			hps_0_hps_io_hps_io_i2c1_inst_SCL     => CONNECTED_TO_hps_0_hps_io_hps_io_i2c1_inst_SCL,     --                     .hps_io_i2c1_inst_SCL
			hps_0_hps_io_hps_io_gpio_inst_GPIO09  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO09,  --                     .hps_io_gpio_inst_GPIO09
			hps_0_hps_io_hps_io_gpio_inst_GPIO34  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO34,  --                     .hps_io_gpio_inst_GPIO34
			hps_0_hps_io_hps_io_gpio_inst_GPIO35  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO35,  --                     .hps_io_gpio_inst_GPIO35
			hps_0_hps_io_hps_io_gpio_inst_GPIO40  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO40,  --                     .hps_io_gpio_inst_GPIO40
			hps_0_hps_io_hps_io_gpio_inst_GPIO53  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO53,  --                     .hps_io_gpio_inst_GPIO53
			hps_0_hps_io_hps_io_gpio_inst_GPIO54  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO54,  --                     .hps_io_gpio_inst_GPIO54
			hps_0_hps_io_hps_io_gpio_inst_GPIO61  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO61,  --                     .hps_io_gpio_inst_GPIO61
			i2c_0_scl                             => CONNECTED_TO_i2c_0_scl,                             --                i2c_0.scl
			i2c_0_sda                             => CONNECTED_TO_i2c_0_sda,                             --                     .sda
			led_pio_export                        => CONNECTED_TO_led_pio_export,                        --              led_pio.export
			master_ctrl_control_user_base         => CONNECTED_TO_master_ctrl_control_user_base,         --          master_ctrl.control_user_base
			master_ctrl_control_en                => CONNECTED_TO_master_ctrl_control_en,                --                     .control_en
			master_ctrl_control_go                => CONNECTED_TO_master_ctrl_control_go,                --                     .control_go
			master_ctrl_control_state             => CONNECTED_TO_master_ctrl_control_state,             --                     .control_state
			master_ctrl_control_user_length       => CONNECTED_TO_master_ctrl_control_user_length,       --                     .control_user_length
			master_write_reset_1_reset            => CONNECTED_TO_master_write_reset_1_reset,            -- master_write_reset_1.reset
			memory_mem_a                          => CONNECTED_TO_memory_mem_a,                          --               memory.mem_a
			memory_mem_ba                         => CONNECTED_TO_memory_mem_ba,                         --                     .mem_ba
			memory_mem_ck                         => CONNECTED_TO_memory_mem_ck,                         --                     .mem_ck
			memory_mem_ck_n                       => CONNECTED_TO_memory_mem_ck_n,                       --                     .mem_ck_n
			memory_mem_cke                        => CONNECTED_TO_memory_mem_cke,                        --                     .mem_cke
			memory_mem_cs_n                       => CONNECTED_TO_memory_mem_cs_n,                       --                     .mem_cs_n
			memory_mem_ras_n                      => CONNECTED_TO_memory_mem_ras_n,                      --                     .mem_ras_n
			memory_mem_cas_n                      => CONNECTED_TO_memory_mem_cas_n,                      --                     .mem_cas_n
			memory_mem_we_n                       => CONNECTED_TO_memory_mem_we_n,                       --                     .mem_we_n
			memory_mem_reset_n                    => CONNECTED_TO_memory_mem_reset_n,                    --                     .mem_reset_n
			memory_mem_dq                         => CONNECTED_TO_memory_mem_dq,                         --                     .mem_dq
			memory_mem_dqs                        => CONNECTED_TO_memory_mem_dqs,                        --                     .mem_dqs
			memory_mem_dqs_n                      => CONNECTED_TO_memory_mem_dqs_n,                      --                     .mem_dqs_n
			memory_mem_odt                        => CONNECTED_TO_memory_mem_odt,                        --                     .mem_odt
			memory_mem_dm                         => CONNECTED_TO_memory_mem_dm,                         --                     .mem_dm
			memory_oct_rzqin                      => CONNECTED_TO_memory_oct_rzqin,                      --                     .oct_rzqin
			reset_reset_n                         => CONNECTED_TO_reset_reset_n,                         --                reset.reset_n
			spi_0_MISO                            => CONNECTED_TO_spi_0_MISO,                            --                spi_0.MISO
			spi_0_MOSI                            => CONNECTED_TO_spi_0_MOSI,                            --                     .MOSI
			spi_0_SCLK                            => CONNECTED_TO_spi_0_SCLK,                            --                     .SCLK
			spi_0_SS_n                            => CONNECTED_TO_spi_0_SS_n,                            --                     .SS_n
			switch_pio_export                     => CONNECTED_TO_switch_pio_export,                     --           switch_pio.export
			uart_0_rxd                            => CONNECTED_TO_uart_0_rxd,                            --               uart_0.rxd
			uart_0_txd                            => CONNECTED_TO_uart_0_txd,                            --                     .txd
			video_tft_vid_clk                     => CONNECTED_TO_video_tft_vid_clk,                     --            video_tft.vid_clk
			video_tft_vid_data                    => CONNECTED_TO_video_tft_vid_data,                    --                     .vid_data
			video_tft_underflow                   => CONNECTED_TO_video_tft_underflow,                   --                     .underflow
			video_tft_vid_datavalid               => CONNECTED_TO_video_tft_vid_datavalid,               --                     .vid_datavalid
			video_tft_vid_v_sync                  => CONNECTED_TO_video_tft_vid_v_sync,                  --                     .vid_v_sync
			video_tft_vid_h_sync                  => CONNECTED_TO_video_tft_vid_h_sync,                  --                     .vid_h_sync
			video_tft_vid_f                       => CONNECTED_TO_video_tft_vid_f,                       --                     .vid_f
			video_tft_vid_h                       => CONNECTED_TO_video_tft_vid_h,                       --                     .vid_h
			video_tft_vid_v                       => CONNECTED_TO_video_tft_vid_v,                       --                     .vid_v
			write_control_fixed_location          => CONNECTED_TO_write_control_fixed_location,          --        write_control.fixed_location
			write_control_write_base              => CONNECTED_TO_write_control_write_base,              --                     .write_base
			write_control_write_length            => CONNECTED_TO_write_control_write_length,            --                     .write_length
			write_control_go                      => CONNECTED_TO_write_control_go,                      --                     .go
			write_control_done                    => CONNECTED_TO_write_control_done,                    --                     .done
			write_user_write_buffer               => CONNECTED_TO_write_user_write_buffer,               --           write_user.write_buffer
			write_user_buffer_input_data          => CONNECTED_TO_write_user_buffer_input_data,          --                     .buffer_input_data
			write_user_buffer_full                => CONNECTED_TO_write_user_buffer_full,                --                     .buffer_full
			pwm_wire                              => CONNECTED_TO_pwm_wire                               --                  pwm.wire
		);

