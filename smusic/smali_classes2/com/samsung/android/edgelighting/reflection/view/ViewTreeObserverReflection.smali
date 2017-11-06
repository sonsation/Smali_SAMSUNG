.class public Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;
.source "ViewTreeObserverReflection.java"


# instance fields
.field private mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method private setListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->mListener:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 6
    .param p1, "instance"    # Landroid/view/ViewTreeObserver;
    .param p2, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 16
    const-string v2, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    .local v0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v3, [Ljava/lang/Class;

    aput-object v0, v1, v5

    .line 20
    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p2, p0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->mListener:Ljava/lang/Object;

    .line 21
    const-string v2, "addOnComputeInternalInsetsListener"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->mListener:Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "android.view.ViewTreeObserver"

    return-object v0
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 6
    .param p1, "instance"    # Landroid/view/ViewTreeObserver;
    .param p2, "victim"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 25
    const-string v2, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v3, [Ljava/lang/Class;

    aput-object v0, v1, v5

    .line 29
    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v2, "removeOnComputeInternalInsetsListener"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->mListener:Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
