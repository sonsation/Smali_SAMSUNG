.class Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;
.super Ljava/lang/Object;
.source "CancelDoneActionMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$000(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$100(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    .line 41
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$200(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020359

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$300(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$300(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$400(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->access$400(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_2
    return-void
.end method
