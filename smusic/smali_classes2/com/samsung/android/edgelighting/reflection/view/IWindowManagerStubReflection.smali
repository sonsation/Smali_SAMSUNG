.class public Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;
.source "IWindowManagerStubReflection.java"


# static fields
.field private static final BASE_CLASS_NAME:Ljava/lang/String; = "android.view.IWindowManager$Stub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 18
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;

    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "android.view.IWindowManager$Stub"

    return-object v0
.end method
