.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$6;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->showPopupMenu()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$6;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$6;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$602(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 261
    return-void
.end method
