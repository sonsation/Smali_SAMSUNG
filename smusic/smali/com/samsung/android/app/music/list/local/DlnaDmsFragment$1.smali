.class Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;
.super Ljava/lang/Object;
.source "DlnaDmsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 136
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    .line 137
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getDlnaDmsDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "deviceId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getDlnaDmsDeviceName(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "title":Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DATAPROMPT_POPUP:Z

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    .line 146
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->showDmsDataCheckDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10000b

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
