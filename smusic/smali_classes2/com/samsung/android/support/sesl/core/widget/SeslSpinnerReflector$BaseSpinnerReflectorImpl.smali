.class Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;
.super Ljava/lang/Object;
.source "SeslSpinnerReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$SpinnerReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseSpinnerReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_mPopup(Landroid/widget/Spinner;)Landroid/widget/ListPopupWindow;
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mPopup"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 29
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 30
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_0

    .line 33
    check-cast v1, Landroid/widget/ListPopupWindow;

    .line 36
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public semSetDropDownHeight(Landroid/widget/Spinner;I)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/Spinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "twSetDropDownHeight"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 43
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-void
.end method
