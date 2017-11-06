.class Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;
.super Ljava/lang/Object;
.source "CreateStationActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainViewHeight()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    const v1, 0x7f120325

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public showActionBar(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "CreateStationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showActionBar : ActionBar Show ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->setMiniPlayerEnabled(Z)V

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public updateOptionMenu()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "CreateStationActivity"

    const-string/jumbo v1, "updateOptionMenu : Update OptionMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->invalidateOptionsMenu()V

    .line 84
    return-void
.end method

.method public updateStationList()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
