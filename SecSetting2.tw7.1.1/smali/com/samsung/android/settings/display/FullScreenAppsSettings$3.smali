.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get6(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get6(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 357
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-wrap3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    .line 352
    return-void
.end method
