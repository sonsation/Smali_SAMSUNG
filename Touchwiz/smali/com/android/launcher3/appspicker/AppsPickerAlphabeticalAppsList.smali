.class public Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
.super Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.source "AppsPickerAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsPositionInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHiddenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrderedFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAppsPerRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    .line 48
    return-void
.end method

.method private filterHiddenApps(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "f":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 86
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 87
    .local v0, "hiddenAppKey":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 88
    .local v2, "key":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    sget-object v4, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterHiddenApps : filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0    # "hiddenAppKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAppsMapSize()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getNumAppsPerRow()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    return v0
.end method

.method public getNumAppsToShow()I
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getRowFromSectionName(Ljava/lang/String;)I
    .locals 9
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v5, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRowFromCompName sectionName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez p1, :cond_1

    .line 202
    const/4 v4, 0x0

    .line 220
    :cond_0
    return v4

    .line 204
    :cond_1
    const/4 v4, 0x0

    .line 205
    .local v4, "row":I
    iget-object v5, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 206
    .local v1, "key":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    .line 207
    .local v3, "pos":Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;
    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mStart:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 209
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    if-eqz v0, :cond_2

    .line 210
    iget-object v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 211
    .local v2, "mapSectionName":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRowFromCompName mapSectionName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 214
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method public getRowItems(I)Ljava/util/List;
    .locals 8
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, "isExistGalaxyAppsButton":Z
    const/4 v0, 0x0

    .line 128
    .local v0, "adapterItemSize":I
    const/4 v4, 0x0

    .line 130
    .local v4, "isNotItemTypeCnt":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    const/4 v3, 0x1

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_1
    if-eqz v3, :cond_2

    if-ne v0, v4, :cond_2

    move-object v5, v6

    .line 149
    :goto_1
    return-object v5

    .line 145
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    .line 146
    .local v2, "info":Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;
    if-eqz v2, :cond_3

    iget v5, v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mEnd:I

    if-gt v5, v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    iget v6, v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mStart:I

    iget v7, v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mEnd:I

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 149
    goto :goto_1
.end method

.method public getSearchedRowItems(I)Ljava/util/List;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    mul-int v0, p1, v1

    .line 118
    .local v0, "row":I
    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    add-int/2addr v2, v0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 121
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasFilter()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public initAppPositionInfoMap()V
    .locals 9

    .prologue
    .line 166
    sget-object v6, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAppPositionInfoMap : AdapterItems size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "appsSize":I
    const/4 v5, 0x0

    .line 170
    .local v5, "startIndex":I
    const/4 v2, 0x0

    .line 171
    .local v2, "endIndex":I
    const/4 v4, 0x0

    .line 173
    .local v4, "rowIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    if-ltz v6, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 173
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_1
    if-lez v0, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v1, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 182
    .local v1, "compName":Ljava/lang/String;
    move v2, v5

    :goto_1
    iget v6, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    add-int/2addr v6, v5

    if-ge v2, v6, :cond_2

    .line 183
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 187
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    invoke-direct {v8, v5, v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move v5, v2

    .line 189
    add-int/lit8 v4, v4, 0x1

    .line 190
    if-lt v5, v0, :cond_1

    .line 197
    .end local v1    # "compName":Ljava/lang/String;
    :cond_3
    return-void

    .line 182
    .restart local v1    # "compName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public resetMap()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 163
    return-void
.end method

.method public setHiddenApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mLastOrderedFilter:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 54
    return-void
.end method

.method public setNumAppsPerRow()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    .line 159
    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "f":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mLastOrderedFilter:Ljava/util/ArrayList;

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "filteredComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 74
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "filteredComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    move-object v0, p1

    .line 80
    .restart local v0    # "filteredComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->filterHiddenApps(Ljava/util/ArrayList;)V

    .line 81
    invoke-super {p0, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 82
    return-void
.end method
