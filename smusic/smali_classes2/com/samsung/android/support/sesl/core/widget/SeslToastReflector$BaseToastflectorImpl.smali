.class Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$BaseToastflectorImpl;
.super Ljava/lang/Object;
.source "SeslToastReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$ToastReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseToastflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$BaseToastflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 10
    .param p1, "toast"    # Landroid/widget/Toast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "duration"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "twMakeText"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 29
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 30
    new-array v2, v9, [Ljava/lang/Object;

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
