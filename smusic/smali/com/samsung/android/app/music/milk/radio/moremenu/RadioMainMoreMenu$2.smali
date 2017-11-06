.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;
.super Ljava/lang/Object;
.source "RadioMainMoreMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initOptionBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    const-string v0, "RadioMainOptionMenu"

    const-string/jumbo v1, "onClick : Option Menu is clicked"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d05db

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setVerticalOffset(I)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01d1

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setHorizontalOffset(I)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->isShowingSpinnerListPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->showSpinnerListPopup(Z)V

    .line 192
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9008"

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method
