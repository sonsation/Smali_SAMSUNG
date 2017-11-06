.class Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;
.super Ljava/lang/Object;
.source "MilkSearchStoreCtrlLocalMusic.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 184
    if-nez p2, :cond_1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$200(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$300(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$300(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;->onMilkLocalMusicReleased()V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$502(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;Z)Z

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$500(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicMode(Z)V

    .line 194
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$400(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V

    goto :goto_0
.end method
