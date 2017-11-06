.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;
.super Ljava/lang/Object;
.source "SystemPropertyFeatures.java"


# static fields
.field public static final COUNTRY_CODE:Ljava/lang/String;

.field public static final COUNTRY_ISO_CODE:Ljava/lang/String;

.field public static final PRODUCT_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getProductName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->PRODUCT_NAME:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_CODE:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_ISO_CODE:Ljava/lang/String;

    return-void
.end method
