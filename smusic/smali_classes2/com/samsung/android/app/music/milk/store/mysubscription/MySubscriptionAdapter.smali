.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "MySubscriptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MySubscriptionAdapter"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 45
    return-void
.end method

.method private getIconResource(Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const v3, 0x7f02037f

    .line 174
    const-string v4, "01"

    const-string v5, "paymentMethodCode"

    .line 175
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const v3, 0x7f02037c

    .line 197
    :cond_0
    :goto_0
    return v3

    .line 179
    :cond_1
    const-string v4, "1"

    const-string/jumbo v5, "streamingCode"

    .line 180
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    .local v2, "streaming":Z
    const-string v4, "downloadMaxCount"

    .line 182
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    .line 184
    .local v1, "mp3":Z
    :goto_1
    const-string v4, "1"

    const-string v5, "drmProduct"

    .line 185
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "drm":Z
    if-eqz v0, :cond_3

    .line 188
    const v3, 0x7f02037d

    goto :goto_0

    .line 182
    .end local v0    # "drm":Z
    .end local v1    # "mp3":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 189
    .restart local v0    # "drm":Z
    .restart local v1    # "mp3":Z
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 190
    const v3, 0x7f020380

    goto :goto_0

    .line 191
    :cond_4
    if-nez v2, :cond_0

    .line 193
    if-eqz v1, :cond_5

    .line 194
    const v3, 0x7f02037e

    goto :goto_0

    .line 196
    :cond_5
    const-string v4, "MySubscriptionAdapter"

    const-string v5, "getIconResource unexpect icon "

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDisplayDivider(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 313
    const/4 v0, 0x1

    .line 315
    .local v0, "is_display":Z
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const/4 v0, 0x0

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 319
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, -0x14

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBindViewHolderActiveItem(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->getItemViewType()I

    move-result v3

    .line 88
    .local v3, "viewType":I
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    .local v0, "c":Landroid/database/Cursor;
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView1:Landroid/widget/TextView;

    const-string v5, "productTitle"

    .line 92
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    const-string v5, "dueDateLocal"

    .line 96
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->img:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getIconResource(Landroid/database/Cursor;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    .line 102
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a03f2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    .line 103
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->changeDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "date":Ljava/lang/String;
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const-string v4, "0"

    const-string/jumbo v5, "streamingCode"

    .line 109
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a03e5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "strMp3":Ljava/lang/String;
    const-string v4, "downloadMaxCount"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_1

    .line 121
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->isDisplayDivider(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_2
    return-void

    .line 112
    .end local v2    # "strMp3":Ljava/lang/String;
    :cond_0
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView3:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView3:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a03e4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 123
    .restart local v2    # "strMp3":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a03ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "usageCount"

    .line 125
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    const-string v8, "downloadMaxCount"

    .line 126
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 123
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private onBindViewHolderExpirtedItem(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->getItemViewType()I

    move-result v2

    .line 143
    .local v2, "viewType":I
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    .local v0, "c":Landroid/database/Cursor;
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView1:Landroid/widget/TextView;

    const-string v4, "productTitle"

    .line 147
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    const-string v4, "dueDateLocal"

    .line 151
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->img:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getIconResource(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->changeDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "date":Ljava/lang/String;
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->isDisplayDivider(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db_date"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    .line 288
    .local v7, "str_format_ori":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 289
    const-string/jumbo v6, "yyyy\ub144 MM\uc6d4 dd\uc77c HH:mm"

    .line 294
    .local v6, "str_format_display":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 295
    .local v4, "fmt_ori":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 297
    .local v3, "fmt_display":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 298
    .local v0, "date_ori":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 308
    .end local v0    # "date_ori":Ljava/util/Date;
    :cond_0
    :goto_1
    return-object v5

    .line 291
    .end local v3    # "fmt_display":Ljava/text/SimpleDateFormat;
    .end local v4    # "fmt_ori":Ljava/text/SimpleDateFormat;
    .end local v6    # "str_format_display":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "yyyy\ub144 MM\uc6d4 dd\uc77c a hh:mm"

    .restart local v6    # "str_format_display":Ljava/lang/String;
    goto :goto_0

    .line 299
    .restart local v3    # "fmt_display":Ljava/text/SimpleDateFormat;
    .restart local v4    # "fmt_ori":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 302
    const/4 v5, 0x0

    .line 303
    .local v5, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 304
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "dates":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object p1, v1, v8

    .line 306
    const-string v8, "-"

    const-string v9, "."

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result v1

    .line 204
    .local v1, "itemType":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    .line 206
    int-to-long v6, v1

    invoke-static {v6, v7, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->convertToViewType(JI)I

    move-result v4

    .line 228
    :goto_0
    return v4

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getItemId(I)J

    move-result-wide v2

    .line 209
    .local v2, "id":J
    const-wide/16 v6, -0x14

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 210
    const-string v5, "MySubscriptionAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemViewType position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - TYPE_HISTORY_HEADER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/16 v4, -0x14

    goto :goto_0

    .line 213
    :cond_1
    const/4 v4, -0x1

    .line 214
    .local v4, "viewType":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 215
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    const-string v5, "02"

    const-string v6, "orderStatus"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    const-string v5, "MySubscriptionAdapter"

    const-string v6, "getItemViewType item type : TYPE_ACTIVE"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v4, 0xa

    .line 227
    :goto_1
    const-string v5, "MySubscriptionAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemViewType position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    const/16 v4, 0x14

    goto :goto_1

    .line 224
    :cond_3
    const-string v5, "MySubscriptionAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemViewType position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - fail to move to position"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->getItemViewType()I

    move-result v0

    .line 70
    .local v0, "viewType":I
    const-string v1, "MySubscriptionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder viewType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v1, -0x14

    if-ne v0, v1, :cond_0

    .line 72
    const-string v1, "MySubscriptionAdapter"

    const-string v2, "TYPE_HISTORY_HEADER"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    const/16 v1, -0x1e

    if-ne v0, v1, :cond_1

    .line 74
    const-string v1, "MySubscriptionAdapter"

    const-string v2, "TYPE_RADIO_LIMIT"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 76
    const-string v1, "MySubscriptionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_ACTIVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->onBindViewHolderActiveItem(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "MySubscriptionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_EXPIRED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->onBindViewHolderExpirtedItem(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 50
    if-nez p3, :cond_0

    .line 51
    const/16 v0, -0x14

    if-ne p2, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040199

    .line 53
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 61
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0

    .line 54
    :cond_1
    const/16 v0, -0x1e

    if-eq p2, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040198

    .line 58
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;

    move-result-object v0

    return-object v0
.end method
