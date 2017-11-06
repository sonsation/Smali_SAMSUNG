.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistCardViewHolder"
.end annotation


# instance fields
.field final cardViewItem1:Landroid/view/View;

.field final cardViewItem2:Landroid/view/View;

.field final cardViewItem3:Landroid/view/View;

.field final cardViewItem4:Landroid/view/View;

.field final guideView:Landroid/widget/TextView;

.field final secondRow:Landroid/view/View;

.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;Landroid/view/View;)V
    .locals 1
    .param p2, "root"    # Landroid/view/View;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->this$1:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;-><init>()V

    .line 1213
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->itemView:Landroid/view/View;

    .line 1214
    const v0, 0x7f120182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->cardViewItem1:Landroid/view/View;

    .line 1215
    const v0, 0x7f120188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->cardViewItem2:Landroid/view/View;

    .line 1216
    const v0, 0x7f12018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->cardViewItem3:Landroid/view/View;

    .line 1217
    const v0, 0x7f120190

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->cardViewItem4:Landroid/view/View;

    .line 1218
    const v0, 0x7f120186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->guideView:Landroid/widget/TextView;

    .line 1219
    const v0, 0x7f120501

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->secondRow:Landroid/view/View;

    .line 1220
    return-void
.end method
