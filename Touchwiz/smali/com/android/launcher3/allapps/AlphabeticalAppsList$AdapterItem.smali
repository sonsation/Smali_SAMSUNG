.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public appIndex:I

.field public iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field public itemDetails:Lcom/android/launcher3/allapps/ItemDetails;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionAppIndex:I

.field public sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 123
    iput v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 129
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 131
    iput v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 133
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->itemDetails:Lcom/android/launcher3/allapps/ItemDetails;

    return-void
.end method

.method public static asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 176
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 177
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 178
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 179
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 180
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 181
    iput-object p4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 182
    iput p5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 183
    return-object v0
.end method

.method public static asDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 194
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 195
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 196
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 197
    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 188
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 189
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 190
    return-object v0
.end method

.method public static asGalaxyApp(ILcom/android/launcher3/allapps/ItemDetails;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "itemDetail"    # Lcom/android/launcher3/allapps/ItemDetails;
    .param p2, "appIndex"    # I

    .prologue
    .line 236
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 237
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 238
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 239
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->itemDetails:Lcom/android/launcher3/allapps/ItemDetails;

    .line 240
    iput p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 241
    return-object v0
.end method

.method public static asListHeader(ILjava/lang/String;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 229
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 230
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 231
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 232
    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 202
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 203
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 204
    return-object v0
.end method

.method public static asNotiText(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 137
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 138
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 141
    return-object v0
.end method

.method public static asPredictedApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 168
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 169
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 170
    return-object v0
.end method

.method public static asRecentApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 147
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 148
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 149
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 150
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 151
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 152
    iput-object p4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 153
    iput p5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 154
    return-object v0
.end method

.method public static asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .prologue
    .line 158
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 159
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 160
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 161
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 162
    iput-object v0, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 163
    return-object v0
.end method

.method public static asTitle(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 208
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 209
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 210
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 211
    return-object v0
.end method

.method public static asViewGalaxyButton(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 215
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 216
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 217
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 218
    return-object v0
.end method

.method public static asViewMarketButton(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 221
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 222
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 223
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 224
    return-object v0
.end method
