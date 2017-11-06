.class public Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "VoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoucherAdapter"


# instance fields
.field private mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


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
    .line 49
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method private changeDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db_date"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    .line 279
    .local v7, "str_format_ori":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 280
    const-string/jumbo v6, "yyyy\ub144 MM\uc6d4 dd\uc77c HH:mm"

    .line 285
    .local v6, "str_format_display":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 286
    .local v4, "fmt_ori":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 288
    .local v3, "fmt_display":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 289
    .local v0, "date_ori":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 299
    .end local v0    # "date_ori":Ljava/util/Date;
    :cond_0
    :goto_1
    return-object v5

    .line 282
    .end local v3    # "fmt_display":Ljava/text/SimpleDateFormat;
    .end local v4    # "fmt_ori":Ljava/text/SimpleDateFormat;
    .end local v6    # "str_format_display":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "yyyy\ub144 MM\uc6d4 dd\uc77c a hh:mm"

    .restart local v6    # "str_format_display":Ljava/lang/String;
    goto :goto_0

    .line 290
    .restart local v3    # "fmt_display":Ljava/text/SimpleDateFormat;
    .restart local v4    # "fmt_ori":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 293
    const/4 v5, 0x0

    .line 294
    .local v5, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 295
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "dates":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object p1, v1, v8

    .line 297
    const-string v8, "-"

    const-string v9, "."

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private isDisplayDivider(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 304
    const/4 v0, 0x1

    .line 306
    .local v0, "is_display":Z
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const/4 v0, 0x0

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 310
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1e

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBindViewHolderVoucherHeader(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->getItemViewType()I

    move-result v0

    .line 91
    .local v0, "viewType":I
    const/16 v1, -0x14

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->header_text:Landroid/widget/TextView;

    const v2, 0x7f0a03fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->header_text:Landroid/widget/TextView;

    const v2, 0x7f0a040c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private onBindViewHolderVoucherItem(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v12, 0x1e

    const/4 v3, 0x1

    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->getItemViewType()I

    move-result v4

    .line 102
    .local v4, "viewType":I
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    .local v1, "c":Landroid/database/Cursor;
    const-string/jumbo v7, "voucherCode"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "voucherCode":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_0
    const-string v2, ""

    .line 125
    .local v2, "expiredDate":Ljava/lang/String;
    if-ne v4, v11, :cond_3

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0406

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : ~ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "expiryDateLocal"

    .line 133
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->changeDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    if-ne v4, v12, :cond_1

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    .line 137
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0405

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110174

    .line 139
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 138
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :cond_1
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    if-ne v4, v11, :cond_4

    const-string v7, "read"

    .line 146
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_4

    .line 147
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->badge:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->isDisplayDivider(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_3
    if-ne v4, v11, :cond_6

    .line 162
    .local v3, "isEnable":Z
    :goto_4
    if-eqz v3, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    .local v0, "alpha":F
    :goto_5
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 164
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setClickable(Z)V

    .line 165
    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    return-void

    .line 109
    .end local v0    # "alpha":F
    .end local v2    # "expiredDate":Ljava/lang/String;
    .end local v3    # "isEnable":Z
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView2:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a03ff

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 128
    .restart local v2    # "expiredDate":Ljava/lang/String;
    :cond_3
    if-ne v4, v12, :cond_0

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0406

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 149
    :cond_4
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->badge:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 157
    :cond_5
    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move v3, v6

    .line 160
    goto :goto_4

    .line 162
    .restart local v3    # "isEnable":Z
    :cond_7
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_5
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->getItemId(I)J

    move-result-wide v2

    .line 172
    .local v2, "id":J
    const-wide/16 v4, -0x1e

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 173
    const-string v4, "VoucherAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - TYPE_HISTORY_HEADER"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v1, -0x1e

    .line 200
    :goto_0
    return v1

    .line 175
    :cond_0
    const-wide/16 v4, -0x14

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 176
    const-string v4, "VoucherAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - ACTIVE_HEADER"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/16 v1, -0x14

    goto :goto_0

    .line 180
    :cond_1
    const/16 v1, 0x14

    .line 181
    .local v1, "viewType":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 182
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    const-string v4, "01"

    const-string/jumbo v5, "statusCode"

    .line 185
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    const/16 v1, 0xa

    .line 199
    :cond_2
    :goto_1
    const-string v4, "VoucherAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_3
    const-string v4, "02"

    const-string/jumbo v5, "statusCode"

    .line 188
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    const/16 v1, 0x14

    goto :goto_1

    .line 190
    :cond_4
    const-string v4, "03"

    const-string/jumbo v5, "statusCode"

    .line 191
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    const/16 v1, 0x1e

    goto :goto_1

    .line 195
    :cond_5
    const-string v4, "VoucherAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - fail to move to position"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->getItemViewType()I

    move-result v0

    .line 79
    .local v0, "viewType":I
    const-string v1, "VoucherAdapter"

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

    .line 81
    const/16 v1, -0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, -0x14

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->onBindViewHolderVoucherHeader(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->onBindViewHolderVoucherItem(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p3, :cond_1

    .line 62
    const/16 v0, -0x1e

    if-eq p2, v0, :cond_0

    const/16 v0, -0x14

    if-ne p2, v0, :cond_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040199

    .line 65
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 71
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040198

    .line 68
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
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemButtonClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 54
    return-void
.end method
