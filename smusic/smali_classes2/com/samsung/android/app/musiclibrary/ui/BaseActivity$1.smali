.class Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 635
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->access$600(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;->notifyMultiWindowModeChanged(Z)V

    .line 636
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 631
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 626
    return-void
.end method
