.class public Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;
.source "IWindowManagerReflection.java"


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->mInstance:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "android.view.IWindowManager"

    return-object v0
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    const-class v1, Landroid/graphics/Point;

    aput-object v1, v0, v6

    .line 30
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->mInstance:Ljava/lang/Object;

    const-string v2, "getBaseDisplaySize"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 7
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    const-class v1, Landroid/graphics/Point;

    aput-object v1, v0, v6

    .line 23
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->mInstance:Ljava/lang/Object;

    const-string v2, "getInitialDisplaySize"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method
