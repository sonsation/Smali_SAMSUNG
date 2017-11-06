.class public Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;
.super Ljava/lang/Object;
.source "SeslSettingsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslSystemReflector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$Api24SystemReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-class v0, Landroid/provider/Settings$System;

    sput-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    .line 92
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$Api24SystemReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$Api24SystemReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SEM_FONT_SIZE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;->getField_SEM_FONT_SIZE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method
