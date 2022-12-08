CREATE TABLE `data_platform_payment_requisition_open_canvas_bulk_transfers_data`
(
  `PayerPaymentRequisitionID`            int(16) NOT NULL,
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `client_id`                            varchar(8) NOT NULL,
  `contractor_id`                        varchar(32) NOT NULL,
  `temporary_transaction_id`             varchar(60) DEFAULT NULL,
  `warning_data_fixed_flag`              tinyint(1) DEFAULT NULL,
  `warning_check_type`                   varchar(10) NOT NULL,
  `extension_edi_utilization_flag`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`PayerPaymentRequisitionID`),
    
   CONSTRAINT `DataPlatformPaymentRequisitionOpenCanvasBulkTransfersData_fk` FOREIGN KEY (`PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`PayerPaymentRequisitionID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
