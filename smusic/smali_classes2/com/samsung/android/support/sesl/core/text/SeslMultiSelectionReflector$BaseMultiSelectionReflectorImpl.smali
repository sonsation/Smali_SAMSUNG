.class Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$BaseMultiSelectionReflectorImpl;
.super Ljava/lang/Object;
.source "SeslMultiSelectionReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$MultiSelectionReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseMultiSelectionReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$BaseMultiSelectionReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isNeedToScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 21
    const-string v3, "android.text.MultiSelection"

    const-string v4, "isNeedToScroll"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 22
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 23
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 28
    :cond_0
    return v2
.end method
