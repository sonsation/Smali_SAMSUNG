.class Lcom/android/launcher3/widget/view/WidgetSearchbar$7;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;->showPopupMenu()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$7;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$7;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$402(Lcom/android/launcher3/widget/view/WidgetSearchbar;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 452
    return-void
.end method
