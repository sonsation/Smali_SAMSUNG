.class Lcom/samsung/android/settings/iris/IrisLockSettings$6;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 827
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$6;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$6;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$6;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get3(Lcom/samsung/android/settings/iris/IrisLockSettings;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-wrap1(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V

    .line 830
    return-void
.end method
