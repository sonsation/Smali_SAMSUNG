.class Lcom/samsung/android/settings/iris/IrisLockSettings$8;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisLockSettings;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    .line 843
    return-void
.end method
