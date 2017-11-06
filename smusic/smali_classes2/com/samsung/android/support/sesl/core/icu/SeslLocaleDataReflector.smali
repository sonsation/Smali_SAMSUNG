.class public Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$BaseLocaleDataReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

.field private static final mClassName:Ljava/lang/String; = "libcore.icu.LocaleData"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$BaseLocaleDataReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$BaseLocaleDataReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    sget-object v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;->get(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p0, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    sget-object v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;->getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    sget-object v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;->getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    sget-object v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;->getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_zeroDigit(Ljava/lang/Object;)C
    .locals 1
    .param p0, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    sget-object v0, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->IMPL:Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;->getField_zeroDigit(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method
