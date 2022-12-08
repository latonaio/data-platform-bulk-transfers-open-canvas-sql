CREATE TABLE `data_platform_payment_requisition_open_canvas_fixed_request_data`
(
  `PayerPaymentRequisitionID`            int(16) NOT NULL,
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
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
  `total_count`                          int(12) DEFAULT NULL,
  `total_amount`                         int(12) DEFAULT NULL,
  `dummy_trailer`                        varchar(3) DEFAULT NULL,
  `approval_pattern_type`                varchar(30) DEFAULT NULL,
  `first_approver_code`                  varchar(2) DEFAULT NULL,
  `second_approver_code`                 varchar(2) DEFAULT NULL,
  `comment`                              varchar(3) DEFAULT NULL,

    PRIMARY KEY (`PayerPaymentRequisitionID`),

    CONSTRAINT `DataPlatformPaymentRequisitionOpenCanvasFixedRequestData_fk` FOREIGN KEY (`PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`PayerPaymentRequisitionID`),
    CONSTRAINT `DataPlatformPaymentRequisitionOpenCanvasFixedRequestDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
