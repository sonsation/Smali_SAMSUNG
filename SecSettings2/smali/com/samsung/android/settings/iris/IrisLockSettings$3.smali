.class Lcom/samsung/android/settings/iris/IrisLockSettings$3;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;->showDisclaimerPopup(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

.field final synthetic val$result:I

.field final synthetic val$skipIntro:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisLockSettings;
    .param p2, "val$result"    # I
    .param p3, "val$skipIntro"    # Z

    .prologue
    .line 452
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iput p2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->val$result:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->val$skipIntro:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-wrap0(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->val$result:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;->val$skipIntro:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-wrap1(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V

    .line 456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 453
    return-void
.end method
