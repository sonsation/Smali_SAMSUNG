.class Lcom/android/systemui/popup/PopupUINotificationsImpl$5;
.super Ljava/lang/Object;
.source "PopupUINotificationsImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/PopupUINotificationsImpl;->showSIMCardTrayWaterProtectionAlertDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/popup/PopupUINotificationsImpl;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$5;->this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$5;->this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->-set0(Lcom/android/systemui/popup/PopupUINotificationsImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 323
    return-void
.end method
