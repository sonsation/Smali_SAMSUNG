.class final Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;
.super Ljava/lang/Object;
.source "AirView.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;->val$listener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;)Z
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "airView":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;->val$listener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;->val$listener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;->getAirView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 97
    :cond_0
    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;->val$v:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Landroid/view/View;)V

    .line 99
    const/4 v1, 0x1

    .line 101
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
