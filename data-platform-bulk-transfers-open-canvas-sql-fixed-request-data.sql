CREATE TABLE `data_platform_bulk_transfers_open_canvas_fixed_request_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `transaction_notes`                    varchar(40) DEFAULT NULL,
  `category_code`                        varchar(2) NOT NULL,
  `remitter_code`                        varchar(10) NOT NULL,
  `remitter_name`                        varchar(40) NOT NULL,
  `effort_date`                          date NOT NULL,
  `remitting_bank_code`                  varchar(4) NOT NULL,
  `remitting_bank_name`                  varchar(15) NOT NULL,
  `remitting_branch_code`	             varchar(3) NOT NULL,
  `remitting_bank_branch_name`           varchar(15) DEFAULT NULL,
  `remitting_account_type_code`          varchar(2) NOT NULL,
  `remitting_account_number`             varchar(7) NOT NULL,
  `dummy_header`                         varchar(17) DEFAULT NULL,

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`),

    CONSTRAINT `DataPlatformBulkTransfersOpenCanvasFixedRequestDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
