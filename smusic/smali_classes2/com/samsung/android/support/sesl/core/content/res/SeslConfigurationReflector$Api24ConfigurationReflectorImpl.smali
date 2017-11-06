.class Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$Api24ConfigurationReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;
.source "SeslConfigurationReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24ConfigurationReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$Api24ConfigurationReflectorImpl;-><init>()V

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

    .line 67
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "SEM_MOBILE_KEYBOARD_COVERED_YES"

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
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
    .line 54
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "semMobileKeyboardCovered"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 59
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 62
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
