.class public Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.super Ljava/lang/Object;
.source "SimpleLifeCycleCallbackAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onStartCalled()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onStopCalled()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
