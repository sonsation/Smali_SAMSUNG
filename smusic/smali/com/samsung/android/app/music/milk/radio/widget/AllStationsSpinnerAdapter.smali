.class public Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllStationsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static HOT_TAG:Ljava/lang/String; = null

.field private static MY_TAG:Ljava/lang/String; = null

.field private static NEW_TAG:Ljava/lang/String; = null

.field private static SMART_TAG:Ljava/lang/String; = null

.field private static final STATION_TAG_HOT:I = 0x4

.field private static final STATION_TAG_NEW:I = 0x1

.field private static final STATION_TAG_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AllStationsSpinnerAdapter"

.field private static UPDATE_TAG:Ljava/lang/String;


# instance fields
.field private cnt:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumTextSize:I

.field private mSpinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTagTextSize:I

.field private selectedCusorIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "NEW"

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->NEW_TAG:Ljava/lang/String;

    .line 36
    const-string v0, "UP"

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->UPDATE_TAG:Ljava/lang/String;

    .line 37
    const-string v0, "HOT"

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->HOT_TAG:Ljava/lang/String;

    .line 38
    const-string v0, "MY"

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->MY_TAG:Ljava/lang/String;

    .line 39
    const-string v0, "4U"

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->SMART_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "spinnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;>;"
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->selectedCusorIndex:I

    .line 44
    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->cnt:I

    .line 47
    const-string v0, "AllStationsSpinnerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllStationsSpinnerAdapter : spinnerList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mSpinnerList:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->cnt:I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->setAppStyleToInflate(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0631

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mTagTextSize:I

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0630

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mNumTextSize:I

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->cnt:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mSpinnerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->selectedCusorIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    .line 91
    .local v7, "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    if-nez v7, :cond_0

    .line 92
    const/4 v10, 0x0

    .line 249
    :goto_0
    return-object v10

    .line 95
    :cond_0
    const/4 v5, 0x0

    .line 96
    .local v5, "genreName":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 97
    .local v8, "stationNumTxt":Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 99
    .local v9, "stationTxt":Landroid/widget/TextView;
    const-string v10, "AllStationsSpinnerAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getView : item Type : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cursorIndex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v10, "AllStationsSpinnerAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getView : selectedCusorIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->selectedCusorIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    if-nez v10, :cond_4

    .line 102
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;

    .line 104
    .local v6, "holder":Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    iget-object v0, v6, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;->header:Landroid/view/View;

    move-object/from16 p2, v0

    .line 107
    .end local v6    # "holder":Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    :cond_1
    if-nez p2, :cond_2

    .line 108
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040119

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    new-instance v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v11, v12}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :cond_2
    const v10, 0x7f12035c

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "genreName":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 115
    .restart local v5    # "genreName":Landroid/widget/TextView;
    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 118
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0333

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 117
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    move-object/from16 v10, p2

    .line 249
    goto/16 :goto_0

    .line 122
    :cond_4
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 123
    if-eqz p2, :cond_5

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;

    .line 125
    .restart local v6    # "holder":Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    iget-object v0, v6, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;->create_station:Landroid/view/View;

    move-object/from16 p2, v0

    .line 128
    .end local v6    # "holder":Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    :cond_5
    if-nez p2, :cond_3

    .line 129
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04011a

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    new-instance v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v11, v0, v12}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    const v10, 0x7f12035e

    .line 133
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    .local v2, "createStationText":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "createStation":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    .end local v1    # "createStation":Ljava/lang/String;
    .end local v2    # "createStationText":Landroid/widget/TextView;
    :cond_6
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 139
    if-eqz p2, :cond_7

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;

    .line 141
    .restart local v6    # "holder":Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    iget-object v0, v6, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;->station:Landroid/view/View;

    move-object/from16 p2, v0

    .line 145
    .end local v6    # "holder":Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
    :cond_7
    if-nez p2, :cond_8

    .line 146
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04011b

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 148
    new-instance v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v11, v12, v0}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :cond_8
    const v10, 0x7f120360

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "stationNumTxt":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 157
    .restart local v8    # "stationNumTxt":Landroid/widget/TextView;
    const v10, 0x7f120324

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "stationTxt":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 160
    .restart local v9    # "stationTxt":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v3, "description":Ljava/lang/StringBuffer;
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 162
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    sget-object v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->NEW_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mTagTextSize:I

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    const v10, 0x7f02016b

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 166
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0337

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 215
    :goto_2
    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->selectedCusorIndex:I

    if-ne v10, v11, :cond_15

    .line 220
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f02016c

    .line 221
    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 222
    .local v4, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 223
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f110141

    .line 239
    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 238
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f110141

    .line 241
    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 240
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 169
    .end local v4    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_a
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 170
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    sget-object v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->UPDATE_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mTagTextSize:I

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    const v10, 0x7f02016b

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 174
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0342

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_2

    .line 177
    :cond_b
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    .line 178
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    sget-object v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->HOT_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mTagTextSize:I

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    const v10, 0x7f02016b

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 182
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0334

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto/16 :goto_2

    .line 186
    :cond_c
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/samsung/android/app/music/milk/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    iget v11, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->ordinal:I

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->showOrdinal(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isHiddenStation:Z

    if-nez v10, :cond_d

    .line 188
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->ordinal:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mNumTextSize:I

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 192
    :cond_d
    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    const-string v11, "03"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 193
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    sget-object v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->SMART_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mTagTextSize:I

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    const v10, 0x7f02016b

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a033d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto/16 :goto_2

    .line 201
    :cond_e
    iget-boolean v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isMyStation:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 202
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    sget-object v10, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->MY_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mTagTextSize:I

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 205
    const v10, 0x7f02016b

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 206
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0336

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto/16 :goto_2

    .line 210
    :cond_f
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 224
    .restart local v4    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_10
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_11

    .line 225
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 226
    :cond_11
    iget v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_12

    .line 227
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 229
    :cond_12
    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    iget v11, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->ordinal:I

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->showOrdinal(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-boolean v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isHiddenStation:Z

    if-eqz v10, :cond_9

    .line 232
    :cond_13
    iget-boolean v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isMyStation:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_14

    iget-object v10, v7, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    const-string v11, "03"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 233
    :cond_14
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 243
    .end local v4    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_15
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/samsung/android/app/music/milk/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f110140

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f110140

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "cursorIndex"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->selectedCusorIndex:I

    .line 80
    return-void
.end method
