.class public Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "AlbumDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field discSubtitleText:Landroid/widget/TextView;

.field durationText:Landroid/widget/TextView;

.field selectorLayout:Landroid/view/View;

.field spacingEachAlbum:Landroid/view/View;

.field spacingTop:Landroid/view/View;

.field subText:Landroid/widget/TextView;

.field titleImage:Landroid/widget/ImageView;

.field titleLayout:Landroid/view/View;

.field titleText:Landroid/widget/TextView;

.field viewType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;Landroid/view/View;I)V
    .locals 3
    .param p1, "adapter"    # Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 171
    iput p3, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->viewType:I

    .line 172
    sparse-switch p3, :sswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 174
    :sswitch_0
    const v1, 0x7f12023e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f12023b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    .line 176
    const v1, 0x7f12023f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f12023c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "titleImage":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 179
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "titleImage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 181
    :cond_1
    const v1, 0x7f120249

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleImage:Landroid/widget/ImageView;

    .line 182
    const v1, 0x7f12023a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingTop:Landroid/view/View;

    .line 183
    const v1, 0x7f120239

    .line 184
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingEachAlbum:Landroid/view/View;

    .line 185
    const v1, 0x7f120148

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->selectorLayout:Landroid/view/View;

    goto :goto_0

    .line 188
    :sswitch_1
    const v1, 0x7f120247

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->discSubtitleText:Landroid/widget/TextView;

    goto :goto_0

    .line 191
    :sswitch_2
    const v1, 0x7f120141

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->durationText:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_1
        0x1 -> :sswitch_2
    .end sparse-switch
.end method
