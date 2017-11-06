.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$2;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->showTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$2;->this$1:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$2;->this$1:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->access$1500(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1895
    return-void
.end method
