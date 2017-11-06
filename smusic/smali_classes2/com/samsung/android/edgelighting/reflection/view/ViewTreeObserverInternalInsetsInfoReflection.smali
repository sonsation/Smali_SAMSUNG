.class public Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;
.source "ViewTreeObserverInternalInsetsInfoReflection.java"


# instance fields
.field public TOUCHABLE_INSETS_REGION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "android.view.ViewTreeObserver$InternalInsetsInfo"

    return-object v0
.end method

.method public getTouchableRegion(Ljava/lang/Object;)Landroid/graphics/Region;
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 29
    const-string/jumbo v1, "touchableRegion"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->getNormalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    check-cast v0, Landroid/graphics/Region;

    goto :goto_0
.end method

.method protected loadStaticFields()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "TOUCHABLE_INSETS_REGION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->TOUCHABLE_INSETS_REGION:I

    .line 15
    return-void
.end method

.method public setTouchableInsets(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "val"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 18
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    .line 21
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v1, "setTouchableInsets"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public setTouchableRegion(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .prologue
    .line 25
    const-string/jumbo v0, "touchableRegion"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->setNormalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
