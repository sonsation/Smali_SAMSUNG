.class public Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/theme/OpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
    }
.end annotation


# static fields
.field private static final CLOSE_FOLDER_COLOR2:I = -0x652e01

.field private static final CLOSE_FOLDER_COLOR3:I = -0x891c52

.field private static final CLOSE_FOLDER_COLOR4:I = -0x114282

.field private static final CLOSE_FOLDER_COLOR5:I = -0xc1e73

.field public static final CLOSE_FOLDER_TYPE_COLOR:I = 0x0

.field public static final CLOSE_FOLDER_TYPE_IMAGE:I = 0x1

.field private static final DEFAULT_CLOSE_FOLDER_COLOR:I = -0x70813

.field private static final DEFAULT_COLOR_INDEX:I = 0x0

.field private static final DEFAULT_FOLDER_COLOR:I = -0x414142

.field public static final DEFAULT_FOLDER_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_OPEN_FOLDER_BG_COLOR:I = -0x50506

.field private static final DEFAULT_SHAPE:I = 0x0

.field public static final FOLDER_COLOR2:I = -0xea4643

.field public static final FOLDER_COLOR3:I = -0x69db

.field public static final FOLDER_COLOR4:I = -0x1345f6

.field public static final FOLDER_COLOR5:I = -0x5829c9

.field public static final INVALID_COLOR:I = 0x1ffffff

.field private static final INVALID_SHAPE:I = -0x1

.field private static final INVALID_TYPE:I = -0x1

.field private static final NUM_FOLDER_COLOR:I = 0x5

.field public static final OPEN_FOLDER_TYPE_DEFAULT:I = 0x0

.field public static final OPEN_FOLDER_TYPE_IMAGE:I = 0x2

.field private static final mDefaultCloseFolderColor:[I

.field private static final mDefaultFolderTitleColor:[I

.field private static final mFolderShapeRes:[I


# instance fields
.field public mFirstCloseFolderIconColor:I

.field public mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

.field private mFolderType:I

.field private mOpenFolderType:I

.field private mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 771
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    .line 772
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    .line 774
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderShapeRes:[I

    return-void

    .line 771
    nop

    :array_0
    .array-data 4
        -0x414142
        -0xea4643
        -0x69db
        -0x1345f6
        -0x5829c9
    .end array-data

    .line 772
    :array_1
    .array-data 4
        -0x70813
        -0x652e01
        -0x891c52
        -0x114282
        -0xc1e73
    .end array-data

    .line 774
    :array_2
    .array-data 4
        0x7f030001
        0x7f020085
        0x7f020086
        0x7f020087
        0x7f020088
    .end array-data
.end method

.method constructor <init>(Lcom/android/launcher3/theme/OpenThemeManager;)V
    .locals 5
    .param p1, "themeManager"    # Lcom/android/launcher3/theme/OpenThemeManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    .line 779
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mOpenFolderType:I

    .line 780
    const v1, 0x1ffffff

    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    .line 888
    new-array v1, v3, [Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    .line 889
    iput-object v4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    .line 894
    iput-object p1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    .line 896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    new-instance v2, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    invoke-direct {v2, p0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;-><init>(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;Lcom/android/launcher3/theme/OpenThemeManager$1;)V

    aput-object v2, v1, v0

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher3/theme/OpenThemeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 741
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderShapeRes:[I

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 902
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v6

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v2, v2, v6

    const v3, 0x1ffffff

    sget-object v4, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget v4, v4, v6

    const/high16 v5, -0x1000000

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$700(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IIIII)V

    .line 902
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 906
    :cond_0
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    .line 907
    return-void
.end method

.method private setFolder(I[IIII)V
    .locals 10
    .param p1, "shape"    # I
    .param p2, "closeColor"    # [I
    .param p3, "bgColor"    # I
    .param p4, "titleColor"    # I
    .param p5, "textColor"    # I

    .prologue
    const v9, 0x1ffffff

    .line 993
    const/4 v8, 0x0

    .line 994
    .local v8, "usefolderColorTitle":Z
    if-ne p4, v9, :cond_0

    .line 995
    const/4 v8, 0x1

    .line 997
    :cond_0
    const v6, 0x1ffffff

    .line 998
    .local v6, "color":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_7

    .line 1000
    aget v0, p2, v7

    if-ne v0, v9, :cond_1

    .line 1001
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v0, v0, v7

    aput v0, p2, v7

    .line 1004
    :cond_1
    if-eqz v8, :cond_2

    .line 1005
    if-nez v7, :cond_5

    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    if-ne v0, v9, :cond_5

    .line 1006
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget p4, v0, v7

    .line 1011
    :cond_2
    :goto_1
    if-ne p5, v9, :cond_3

    .line 1012
    const/high16 p5, -0x1000000

    .line 1015
    :cond_3
    if-ne p3, v9, :cond_4

    .line 1016
    const p3, -0x50506

    .line 1019
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v7

    aget v2, p2, v7

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$700(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IIIII)V

    .line 1020
    aget v0, p2, v7

    if-eq v6, v0, :cond_6

    if-lez v7, :cond_6

    .line 1021
    const v6, 0x1ffffff

    .line 998
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1008
    :cond_5
    aget p4, p2, v7

    goto :goto_1

    .line 1023
    :cond_6
    aget v6, p2, v7

    goto :goto_2

    .line 1027
    :cond_7
    if-eq v6, v9, :cond_8

    .line 1028
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    .line 1030
    :cond_8
    return-void
.end method

.method private setFolder(I[ILandroid/graphics/drawable/Drawable;II)V
    .locals 9
    .param p1, "shape"    # I
    .param p2, "closeColor"    # [I
    .param p3, "open"    # Landroid/graphics/drawable/Drawable;
    .param p4, "titleColor"    # I
    .param p5, "textColor"    # I

    .prologue
    const v8, 0x1ffffff

    .line 1065
    const v6, 0x1ffffff

    .line 1066
    .local v6, "color":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_4

    .line 1068
    aget v0, p2, v7

    if-ne v0, v8, :cond_0

    .line 1069
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v0, v0, v7

    aput v0, p2, v7

    .line 1072
    :cond_0
    if-ne p4, v8, :cond_1

    .line 1073
    const/4 v0, 0x0

    aget p4, p2, v0

    .line 1076
    :cond_1
    if-ne p5, v8, :cond_2

    .line 1077
    const/high16 p5, -0x1000000

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v7

    aget v2, p2, v7

    move v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1000(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IILandroid/graphics/drawable/Drawable;II)V

    .line 1081
    aget v0, p2, v7

    if-eq v6, v0, :cond_3

    if-lez v7, :cond_3

    .line 1082
    const v6, 0x1ffffff

    .line 1066
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1084
    :cond_3
    aget v6, p2, v7

    goto :goto_1

    .line 1088
    :cond_4
    if-eq v6, v8, :cond_5

    .line 1089
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    .line 1091
    :cond_5
    return-void
.end method

.method private setFolder(Landroid/graphics/drawable/Drawable;III)V
    .locals 3
    .param p1, "close"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgColor"    # I
    .param p3, "titleColor"    # I
    .param p4, "textColor"    # I

    .prologue
    const/4 v2, 0x0

    const v1, 0x1ffffff

    .line 1047
    if-ne p3, v1, :cond_0

    .line 1049
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget p3, v0, v2

    .line 1052
    :cond_0
    if-ne p4, v1, :cond_1

    .line 1053
    const/high16 p4, -0x1000000

    .line 1056
    :cond_1
    if-ne p2, v1, :cond_2

    .line 1057
    const p4, -0x50506

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v2

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$900(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;III)V

    .line 1061
    return-void
.end method

.method private setFolder(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p1, "close"    # Landroid/graphics/drawable/Drawable;
    .param p2, "open"    # Landroid/graphics/drawable/Drawable;
    .param p3, "titleColor"    # I
    .param p4, "textColor"    # I

    .prologue
    const v2, 0x1ffffff

    const/4 v1, 0x0

    .line 1034
    if-ne p3, v2, :cond_0

    .line 1036
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget p3, v0, v1

    .line 1039
    :cond_0
    if-ne p4, v2, :cond_1

    .line 1040
    const/high16 p4, -0x1000000

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$800(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1043
    return-void
.end method


# virtual methods
.method public getCloseFolderBackground(III)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "colorIndex"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    const/4 v3, 0x1

    .line 1094
    iget v2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    if-ne v2, v3, :cond_1

    .line 1095
    const/4 p1, 0x0

    .line 1101
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1103
    .local v0, "foldeIcon":Landroid/graphics/Bitmap;
    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1105
    .local v1, "resizedfoldeIcon":Landroid/graphics/Bitmap;
    return-object v1

    .line 1097
    .end local v0    # "foldeIcon":Landroid/graphics/Bitmap;
    .end local v1    # "resizedfoldeIcon":Landroid/graphics/Bitmap;
    :cond_1
    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    .line 1098
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getCloseFolderColor(I)I
    .locals 2
    .param p1, "colorIndex"    # I

    .prologue
    .line 1152
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1153
    const/4 p1, 0x0

    .line 1159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1500(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    .line 1155
    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 1156
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getCloseFolderImage(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "colorIndex"    # I

    .prologue
    .line 1109
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1110
    const/4 p1, 0x0

    .line 1116
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1117
    .local v0, "foldeIcon":Landroid/graphics/Bitmap;
    return-object v0

    .line 1112
    .end local v0    # "foldeIcon":Landroid/graphics/Bitmap;
    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    .line 1113
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getFirstCloseFolderIconColor()I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    return v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    return v0
.end method

.method public getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "colorIndex"    # I

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1200(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1123
    .local v0, "foldeIcon":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getOpenFolderType()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mOpenFolderType:I

    return v0
.end method

.method public getTextColor(I)I
    .locals 3
    .param p1, "colorIndex"    # I

    .prologue
    .line 1140
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1141
    const/4 p1, 0x0

    .line 1147
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    .line 1148
    .local v0, "textColor":I
    return v0

    .line 1143
    .end local v0    # "textColor":I
    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    .line 1144
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getTitleColor(I)I
    .locals 3
    .param p1, "colorIndex"    # I

    .prologue
    .line 1127
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1128
    const/4 p1, 0x0

    .line 1134
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1300(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    .line 1136
    .local v0, "titleColor":I
    return v0

    .line 1130
    .end local v0    # "titleColor":I
    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    .line 1131
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method setFolderTheme()V
    .locals 18

    .prologue
    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->init()V

    .line 912
    const/4 v2, 0x5

    new-array v4, v2, [I

    .line 922
    .local v4, "folderColor":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_TYPE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_TITLE_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v6

    .line 924
    .local v6, "openFolderTitleColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v7

    .line 925
    .local v7, "openFolderTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 926
    .local v5, "openFolderBg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v11

    .line 927
    .local v11, "openFolderBgColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_TYPE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v17

    .line 928
    .local v17, "openFolderType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_ICON1:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 930
    .local v14, "folderImage":Landroid/graphics/drawable/Drawable;
    instance-of v2, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 932
    .local v16, "openBg":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_0

    .line 933
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 937
    .end local v16    # "openBg":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    .line 938
    const/16 v17, 0x0

    .line 940
    :cond_1
    const v2, 0x1ffffff

    if-ne v6, v2, :cond_2

    .line 941
    const v6, -0x414142

    .line 943
    :cond_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mOpenFolderType:I

    .line 945
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    if-eqz v14, :cond_6

    .line 946
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    if-eqz v5, :cond_3

    .line 947
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v6, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 989
    :goto_0
    return-void

    .line 949
    :cond_3
    if-eqz v17, :cond_4

    const v2, 0x1ffffff

    if-eq v11, v2, :cond_4

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    if-nez v5, :cond_5

    .line 952
    :cond_4
    const v11, -0x50506

    .line 953
    if-nez v17, :cond_5

    .line 954
    const v6, 0x1ffffff

    .line 955
    const/high16 v7, -0x1000000

    .line 959
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v6, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(Landroid/graphics/drawable/Drawable;III)V

    goto :goto_0

    .line 962
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_SHAPE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v3

    .line 963
    .local v3, "closeFolderShape":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    if-nez v14, :cond_8

    .line 965
    :cond_7
    const/4 v3, 0x0

    .line 968
    :cond_8
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v15, v2, :cond_9

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_COLOR1:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    add-int/2addr v8, v15

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v2

    aput v2, v4, v15

    .line 968
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 972
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_COLOR1:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    .line 974
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    if-eqz v5, :cond_a

    move-object/from16 v2, p0

    .line 975
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(I[ILandroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    .line 977
    :cond_a
    if-eqz v17, :cond_b

    const v2, 0x1ffffff

    if-eq v11, v2, :cond_b

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    if-nez v5, :cond_c

    .line 980
    :cond_b
    const v11, -0x50506

    .line 981
    if-nez v17, :cond_c

    .line 982
    const v6, 0x1ffffff

    .line 983
    const/high16 v7, -0x1000000

    :cond_c
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v12, v6

    move v13, v7

    .line 986
    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(I[IIII)V

    goto/16 :goto_0
.end method
