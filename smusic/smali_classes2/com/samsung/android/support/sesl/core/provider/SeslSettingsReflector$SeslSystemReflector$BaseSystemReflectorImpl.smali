.class Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;
.super Ljava/lang/Object;
.source "SeslSettingsReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$SystemReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseSystemReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector$BaseSystemReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_FONT_SIZE()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "FONT_SIZE"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 43
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 49
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "font_size"

    goto :goto_0
.end method

.method public getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "PEN_HOVERING"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 31
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 37
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "pen_hovering"

    goto :goto_0
.end method

.method public getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I
    .param p4, "userHandle"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getIntForUser"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 56
    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 58
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 61
    :cond_0
    return v2
.end method
