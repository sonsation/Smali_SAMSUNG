.class Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$Api24SystemReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;
.source "SeslSettingsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24SystemReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$Api24SystemReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_FONT_SIZE()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SEM_FONT_SIZE"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 84
    check-cast v1, Ljava/lang/String;

    .line 86
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    const-string v1, "font_size"

    goto :goto_0
.end method

.method public getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SEM_PEN_HOVERING"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 72
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 76
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    const-string v1, "pen_hovering"

    goto :goto_0
.end method
