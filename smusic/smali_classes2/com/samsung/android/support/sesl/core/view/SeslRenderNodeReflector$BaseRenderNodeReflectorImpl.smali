.class Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$BaseRenderNodeReflectorImpl;
.super Ljava/lang/Object;
.source "SeslRenderNodeReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$RenderNodeReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseRenderNodeReflectorImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public offsetLeftAndRight(Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "renderNode"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "offsetLeftAndRight"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 29
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 30
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v0, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 35
    :cond_0
    return v2
.end method
