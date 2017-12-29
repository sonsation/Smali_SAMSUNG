.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;,
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    }
.end annotation


# static fields
.field private static final SETTINGS_ORDER_FILENAME:Ljava/lang/String; = "cocktail_order.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_CLASS_NAME:Ljava/lang/String;

.field private final TAG_COCKTAIL_ID:Ljava/lang/String;

.field private final TAG_COCKTAIL_ORDER:Ljava/lang/String;

.field private final TAG_ORDER:Ljava/lang/String;

.field private final TAG_PACKAGE:Ljava/lang/String;

.field private final TAG_PROVIDER:Ljava/lang/String;

.field private final TAG_USER_ID:Ljava/lang/String;

.field mCocktailOrderedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "cocktail_order"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ORDER:Ljava/lang/String;

    .line 38
    const-string v0, "provider"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PROVIDER:Ljava/lang/String;

    .line 39
    const-string v0, "order"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_ORDER:Ljava/lang/String;

    .line 40
    const-string v0, "user_id"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_USER_ID:Ljava/lang/String;

    .line 41
    const-string v0, "cocktail_id"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ID:Ljava/lang/String;

    .line 42
    const-string v0, "package"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PACKAGE:Ljava/lang/String;

    .line 43
    const-string v0, "class_name"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_CLASS_NAME:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static getSettingsFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktail_order.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadStateLocked()V
    .locals 6

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 90
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 92
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 93
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 88
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    sget-object v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    .line 97
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 96
    throw v3
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 30
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 138
    const/16 v21, 0x0

    .line 139
    .local v21, "success":Z
    const/16 v25, 0x0

    .line 141
    .local v25, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 142
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 144
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v15, "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    :cond_0
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .line 147
    .local v23, "type":I
    const/16 v26, 0x2

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 148
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 149
    .local v22, "tag":Ljava/lang/String;
    const-string v26, "cocktail_order"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 150
    const-string v26, "version"

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-result-object v3

    .line 152
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result v25

    .line 167
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v22    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 168
    const/16 v21, 0x1

    .line 169
    :try_start_2
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 170
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "readStateFromFileLocked: orderList="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .local v14, "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2e
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_4
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .local v16, "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    goto :goto_1

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_2
    :try_start_5
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 203
    .end local v8    # "e":Ljava/io/IOException;
    .end local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "type":I
    :goto_3
    const/4 v4, 0x0

    .line 137
    :cond_2
    :goto_4
    return-void

    .line 153
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "tag":Ljava/lang/String;
    .restart local v23    # "type":I
    :catch_1
    move-exception v12

    .line 154
    .local v12, "e":Ljava/lang/NumberFormatException;
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 156
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_7
    const-string v26, "provider"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 157
    const-string v26, "order"

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 158
    .local v17, "order":I
    const-string v26, "user_id"

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 159
    .local v24, "userId":I
    const-string v26, "cocktail_id"

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 160
    .local v7, "cocktailId":I
    new-instance v19, Landroid/content/ComponentName;

    const-string v26, "package"

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "class_name"

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v19, "providerInfo":Landroid/content/ComponentName;
    new-instance v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(ILandroid/content/ComponentName;II)V

    .line 162
    .local v6, "c":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    if-eqz v6, :cond_1

    .line 163
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_0

    .line 171
    .end local v6    # "c":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    .end local v7    # "cocktailId":I
    .end local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v17    # "order":I
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "providerInfo":Landroid/content/ComponentName;
    .end local v22    # "tag":Ljava/lang/String;
    .end local v23    # "type":I
    .end local v24    # "userId":I
    :catch_2
    move-exception v11

    .line 172
    .local v11, "e":Ljava/lang/NullPointerException;
    :try_start_8
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed parsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_28
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_a
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_10

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_5

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_6
    :try_start_b
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 200
    :catch_4
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "str":Ljava/lang/String;
    .restart local v23    # "type":I
    :cond_4
    if-eqz v5, :cond_16

    .line 199
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_3

    .line 200
    :catch_5
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 200
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_6
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 197
    :goto_7
    if-eqz v4, :cond_5

    .line 199
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 203
    :goto_8
    const/4 v4, 0x0

    .line 196
    :cond_5
    throw v26

    .line 200
    :catch_7
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 181
    .end local v8    # "e":Ljava/io/IOException;
    .end local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "type":I
    :catch_8
    move-exception v9

    .line 182
    .local v9, "e":Ljava/lang/Exception;
    :try_start_f
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed parsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2d
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_11
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    goto :goto_9

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_9
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_a
    :try_start_12
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_3

    .line 200
    :catch_a
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_16

    .line 199
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_3

    .line 200
    :catch_b
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v26

    .line 197
    :goto_b
    if-eqz v4, :cond_7

    .line 199
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 203
    :goto_c
    const/4 v4, 0x0

    .line 196
    :cond_7
    throw v26

    .line 200
    :catch_c
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 179
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v10

    .line 180
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_16
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed parsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2c
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_18
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    goto :goto_d

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_e
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_e
    :try_start_19
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_3

    .line 200
    :catch_f
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_16

    .line 199
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto/16 :goto_3

    .line 200
    :catch_10
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catchall_2
    move-exception v26

    .line 197
    :goto_f
    if-eqz v4, :cond_9

    .line 199
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 203
    :goto_10
    const/4 v4, 0x0

    .line 196
    :cond_9
    throw v26

    .line 200
    :catch_11
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 177
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_12
    move-exception v8

    .line 178
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_1d
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed parsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_1f
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_a

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_13
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    goto :goto_11

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_13
    move-exception v8

    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_12
    :try_start_20
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_21
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_14

    goto/16 :goto_3

    .line 200
    :catch_14
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_16

    .line 199
    :try_start_22
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_15

    goto/16 :goto_3

    .line 200
    :catch_15
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catchall_3
    move-exception v26

    .line 197
    :goto_13
    if-eqz v4, :cond_b

    .line 199
    :try_start_23
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_16

    .line 203
    :goto_14
    const/4 v4, 0x0

    .line 196
    :cond_b
    throw v26

    .line 200
    :catch_16
    move-exception v8

    .line 201
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 175
    .end local v8    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v13

    .line 176
    .local v13, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_24
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed parsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_25
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2a
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_26
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_15
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_c

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_18
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    goto :goto_15

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_18
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_16
    :try_start_27
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_19

    goto/16 :goto_3

    .line 200
    :catch_19
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_c
    if-eqz v5, :cond_16

    .line 199
    :try_start_29
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1a

    goto/16 :goto_3

    .line 200
    :catch_1a
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catchall_4
    move-exception v26

    .line 197
    :goto_17
    if-eqz v4, :cond_d

    .line 199
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1b

    .line 203
    :goto_18
    const/4 v4, 0x0

    .line 196
    :cond_d
    throw v26

    .line 200
    :catch_1b
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 173
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1c
    move-exception v12

    .line 174
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    :try_start_2b
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed parsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    .line 184
    if-nez v21, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_29
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_2d
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_19
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_1d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    goto :goto_19

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_1d
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_1a
    :try_start_2e
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_1e

    goto/16 :goto_3

    .line 200
    :catch_1e
    move-exception v8

    .line 201
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_e
    if-eqz v5, :cond_16

    .line 199
    :try_start_30
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_1f

    goto/16 :goto_3

    .line 200
    :catch_1f
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catchall_5
    move-exception v26

    .line 197
    :goto_1b
    if-eqz v4, :cond_f

    .line 199
    :try_start_31
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_20

    .line 203
    :goto_1c
    const/4 v4, 0x0

    .line 196
    :cond_f
    throw v26

    .line 200
    :catch_20
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 197
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_10
    if-eqz v5, :cond_16

    .line 199
    :try_start_32
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_21

    goto/16 :goto_3

    .line 200
    :catch_21
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v26, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 196
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catchall_6
    move-exception v26

    .line 197
    :goto_1d
    if-eqz v4, :cond_11

    .line 199
    :try_start_33
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_22

    .line 203
    :goto_1e
    const/4 v4, 0x0

    .line 196
    :cond_11
    throw v26

    .line 200
    :catch_22
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 183
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/NullPointerException;
    :catchall_7
    move-exception v26

    .line 184
    if-nez v21, :cond_12

    .line 185
    const/4 v4, 0x0

    .line 187
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v14

    .line 188
    .restart local v14    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_27
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    .line 189
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 190
    .local v20, "str":Ljava/lang/String;
    :try_start_35
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_13

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_23
    .catchall {:try_start_35 .. :try_end_35} :catchall_9

    goto :goto_1f

    .line 194
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_23
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v4, v5

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    :goto_20
    :try_start_36
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8

    .line 197
    if-eqz v4, :cond_12

    .line 199
    :try_start_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_25

    .line 203
    .end local v8    # "e":Ljava/io/IOException;
    :goto_21
    const/4 v4, 0x0

    .line 183
    :cond_12
    :goto_22
    throw v26

    .line 197
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_13
    if-eqz v5, :cond_15

    .line 199
    :try_start_38
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_24

    goto :goto_21

    .line 200
    :catch_24
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 200
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v20    # "str":Ljava/lang/String;
    :catch_25
    move-exception v8

    .line 201
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 196
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v26

    .line 197
    :goto_23
    if-eqz v4, :cond_14

    .line 199
    :try_start_39
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_26

    .line 203
    :goto_24
    const/4 v4, 0x0

    .line 196
    :cond_14
    throw v26

    .line 200
    :catch_26
    move-exception v8

    .line 201
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v27, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to close stream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 196
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_9
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto :goto_23

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_27
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_20

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_a
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_1d

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_28
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_b
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_1b

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_29
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_1a

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_c
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_17

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_2a
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_16

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_d
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_13

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_2b
    move-exception v8

    goto/16 :goto_12

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_e
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_2c
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    :catchall_f
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_2d
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_a

    .line 196
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "type":I
    :catchall_10
    move-exception v26

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 194
    .end local v14    # "file":Landroid/util/AtomicFile;
    .local v4, "br":Ljava/io/BufferedReader;
    :catch_2e
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v15    # "loadedCocktailOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "type":I
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "file":Landroid/util/AtomicFile;
    .restart local v16    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_15
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto/16 :goto_22

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :cond_16
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private saveStateLocked()V
    .locals 6

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 76
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 77
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 72
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 80
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 81
    sget-object v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savedStateFile()Landroid/util/AtomicFile;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "dir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 62
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/cocktail_order.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 69
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 11
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 105
    :try_start_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 106
    sget-object v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v7, "Failed to write state: no order info"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v9

    .line 109
    :cond_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 110
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v4, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 111
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    const-string v6, "cocktail_order"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 114
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 115
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 116
    .local v1, "cocktailOrderInfo":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    iget-object v5, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    .line 117
    .local v5, "pInfo":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 118
    const-string v6, "provider"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v6, "order"

    iget v7, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v6, "user_id"

    iget v7, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v6, "cocktail_id"

    iget v7, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v6, "package"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    const-string v6, "class_name"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const-string v6, "provider"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "cocktailOrderInfo":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    .end local v5    # "pInfo":Landroid/content/ComponentName;
    :cond_2
    const-string v6, "cocktail_order"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return v10

    .line 130
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v9
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "[CocktailOrderManager]: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "dumpString":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 311
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 312
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    iget v3, v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "i":I
    .end local v2    # "size":I
    :goto_1
    monitor-exit v4

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 316
    :cond_1
    :try_start_1
    const-string v3, "null\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getMatchedSortIds(Ljava/util/ArrayList;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->loadStateLocked()V

    .line 259
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMatchedSortIds: loadedorder="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 260
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 267
    .local v2, "sortedIds":[I
    array-length v1, v2

    .line 268
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "sortedIds":[I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 264
    :cond_4
    new-instance v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;

    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;-><init>(Lcom/android/server/cocktailbar/settings/CocktailOrderManager;Ljava/util/ArrayList;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 271
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "sortedIds":[I
    :cond_5
    return-object v2
.end method

.method public setOrderedList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "orderedCocktail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 213
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->saveStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 210
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
