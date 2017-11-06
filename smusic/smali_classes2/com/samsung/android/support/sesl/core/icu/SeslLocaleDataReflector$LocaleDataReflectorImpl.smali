.class interface abstract Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LocaleDataReflectorImpl"
.end annotation


# virtual methods
.method public abstract get(Ljava/util/Locale;)Ljava/lang/Object;
    .param p1    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getField_zeroDigit(Ljava/lang/Object;)C
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
