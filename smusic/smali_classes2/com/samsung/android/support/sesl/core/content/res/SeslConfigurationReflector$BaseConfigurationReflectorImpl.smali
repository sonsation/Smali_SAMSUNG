.class Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;
.super Ljava/lang/Object;
.source "SeslConfigurationReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseConfigurationReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_MOBILE_KEYBOARD_COVERED_YES(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "MOBILEKEYBOARD_COVERED_YES"

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 41
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 44
    :cond_0
    return v2
.end method

.method public getField_semMobileKeyboardCovered(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mobileKeyboardCovered"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 25
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 31
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
