CREATE TABLE `data_platform_payment_requisition_open_canvas_bulk_transfers_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `client_id`                            varchar(8) NOT NULL,
  `contractor_id`                        varchar(32) NOT NULL,
  `temporary_transaction_id`             varchar(60) DEFAULT NULL,
  `warning_data_fixed_flag`              tinyint(1) DEFAULT NULL,
  `warning_check_type`                   varchar(10) NOT NULL,
  `extension_edi_utilization_flag`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
