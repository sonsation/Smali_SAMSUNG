.class Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$Api24SpinnerReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;
.source "SeslSpinnerReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24SpinnerReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$Api24SpinnerReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 54
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "semSetDropDownHeight"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 56
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method
