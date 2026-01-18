package com.navesh.ECom.model.dto;

public record OrderItemRequest(
        int productId,
        int quantity
) {}
