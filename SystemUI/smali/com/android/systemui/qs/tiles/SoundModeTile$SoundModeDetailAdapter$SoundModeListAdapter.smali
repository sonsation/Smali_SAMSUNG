.class Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SoundModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundModeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .param p5, "objects"    # [Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    .line 402
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 401
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x21

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 407
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 409
    .local v5, "v":Landroid/widget/CheckedTextView;
    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_TEMPORARY_MUTE:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 410
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f03b4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "muteStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mode_ringer_time_on"

    const/4 v9, -0x2

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v0, :cond_1

    .line 413
    .local v0, "isTempMuteOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 414
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap1(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "remain":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 416
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 417
    .local v3, "spanRemain":Landroid/text/SpannableString;
    const-string/jumbo v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 418
    .local v4, "start":I
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x10301b3

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 419
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 418
    invoke-virtual {v3, v6, v4, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 420
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 421
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 420
    invoke-virtual {v3, v6, v4, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 422
    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    .end local v0    # "isTempMuteOn":Z
    .end local v1    # "muteStr":Ljava/lang/String;
    .end local v2    # "remain":Ljava/lang/String;
    .end local v3    # "spanRemain":Landroid/text/SpannableString;
    .end local v4    # "start":I
    :cond_0
    return-object v5

    .restart local v1    # "muteStr":Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 411
    goto :goto_0
.end method
