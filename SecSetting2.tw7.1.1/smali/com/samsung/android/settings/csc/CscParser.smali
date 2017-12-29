.class public Lcom/samsung/android/settings/csc/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/csc/CscParser$CscNodeList;
    }
.end annotation


# static fields
.field private static CSC_CUSTOMER_FILE:Ljava/lang/String;

.field private static CSC_OTHERS_FILE:Ljava/lang/String;

.field private static Media_Type:I

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "/system/csc/customer.xml"

    sput-object v0, Lcom/samsung/android/settings/csc/CscParser;->CSC_CUSTOMER_FILE:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "/system/csc/others.xml"

    sput-object v0, Lcom/samsung/android/settings/csc/CscParser;->CSC_OTHERS_FILE:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/csc/CscParser;->value_uri:Landroid/net/Uri;

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/settings/csc/CscParser;->Media_Type:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/csc/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChameleonPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-string/jumbo v0, "/carrier/chameleon.xml"

    .line 379
    .local v0, "chameleon_path":Ljava/lang/String;
    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 307
    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getOmcCustomerPath()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "omc_customer_file":Ljava/lang/String;
    const-string/jumbo v2, "CscParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OMC path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v1, :cond_1

    .line 310
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const-string/jumbo v2, "CscParser"

    const-string/jumbo v3, "getCustomerPath : omc customer file can read"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v1

    .line 318
    :cond_0
    const-string/jumbo v2, "CscParser"

    const-string/jumbo v3, "getCustomerPath : omc customer file exist but can\'t read"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v2, Lcom/samsung/android/settings/csc/CscParser;->CSC_CUSTOMER_FILE:Ljava/lang/String;

    return-object v2

    .line 324
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const-string/jumbo v2, "CscParser"

    const-string/jumbo v3, "getCustomerPath : customer file exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v2, Lcom/samsung/android/settings/csc/CscParser;->CSC_CUSTOMER_FILE:Ljava/lang/String;

    return-object v2
.end method

.method public static getOmcCustomerPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "omc_path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/customer.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getOmcPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    const-string/jumbo v1, "persist.sys.omc_path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "omcPath":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.omcnw_path"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 12

    .prologue
    .line 252
    const/4 v8, 0x0

    .line 254
    .local v8, "sales_code":Ljava/lang/String;
    const/4 v5, 0x0

    .line 255
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 259
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "/efs/imei/mps_code.dat"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v4, "fe":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 263
    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v9, "/efs/imei/mps_code.dat"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .end local v5    # "fr":Ljava/io/FileReader;
    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v8

    .local v8, "sales_code":Ljava/lang/String;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "sales_code":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 277
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 278
    :cond_0
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 283
    .end local v4    # "fe":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v8

    .line 267
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v4    # "fe":Ljava/io/File;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .local v8, "sales_code":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v9, "CscParser"

    const-string/jumbo v10, "mps_code.dat does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 270
    .end local v4    # "fe":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 271
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string/jumbo v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File not Found exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    if-eqz v5, :cond_3

    .line 277
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 278
    :cond_3
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 280
    :catch_1
    move-exception v7

    .local v7, "iex":Ljava/io/IOException;
    goto :goto_1

    .line 272
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "iex":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v5, :cond_4

    .line 277
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 278
    :cond_4
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 280
    :catch_3
    move-exception v7

    .restart local v7    # "iex":Ljava/io/IOException;
    goto :goto_1

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "iex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 276
    :goto_4
    if-eqz v5, :cond_5

    .line 277
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 278
    :cond_5
    if-eqz v0, :cond_6

    .line 279
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 274
    :cond_6
    :goto_5
    throw v9

    .line 280
    :catch_4
    move-exception v7

    .restart local v7    # "iex":Ljava/io/IOException;
    goto :goto_5

    .line 274
    .end local v7    # "iex":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fe":Ljava/io/File;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 270
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 272
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 280
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v8    # "sales_code":Ljava/lang/String;
    :catch_9
    move-exception v7

    .restart local v7    # "iex":Ljava/io/IOException;
    goto :goto_1
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 89
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 91
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string/jumbo v3, "CscParser"

    const-string/jumbo v4, "update(): xml file exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 99
    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/csc/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 86
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string/jumbo v3, "CscParser"

    const-string/jumbo v4, "update(): xml file not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 108
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 109
    return-object v2

    .line 111
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 112
    .local v0, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getAttrbute(Ljava/lang/String;II)Ljava/lang/String;
    .locals 17
    .param p1, "tagPath"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "mode"    # I

    .prologue
    .line 205
    const/4 v3, 0x0

    .line 206
    .local v3, "attribute":Ljava/lang/String;
    const-string/jumbo v14, "[.]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "tagSplit":[Ljava/lang/String;
    array-length v9, v13

    .line 209
    .local v9, "tagCount":I
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "tagCount":I
    .local v10, "tagCount":I
    const/4 v14, 0x3

    if-ge v9, v14, :cond_0

    .line 210
    return-object v3

    .line 214
    :cond_0
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "tagCount":I
    .restart local v9    # "tagCount":I
    aget-object v8, v13, v10

    .line 215
    .local v8, "tagAttr":Ljava/lang/String;
    aget-object v11, v13, v9

    .line 216
    .local v11, "tagList":Ljava/lang/String;
    const/4 v12, 0x0

    .line 218
    .local v12, "tagNode":Ljava/lang/String;
    const/4 v5, 0x0

    .end local v12    # "tagNode":Ljava/lang/String;
    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 219
    if-nez v12, :cond_1

    .line 220
    aget-object v12, v13, v5

    .line 218
    .local v12, "tagNode":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    .end local v12    # "tagNode":Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v13, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "tagNode":Ljava/lang/String;
    goto :goto_1

    .line 225
    .end local v12    # "tagNode":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/samsung/android/settings/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 226
    .local v7, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    move/from16 v0, p2

    if-le v14, v0, :cond_3

    .line 227
    move/from16 v0, p2

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 230
    .local v6, "list":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v6    # "list":Lorg/w3c/dom/Element;
    :cond_3
    if-eqz v3, :cond_4

    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_4

    .line 236
    const-string/jumbo v14, "/"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "attrSlash":[Ljava/lang/String;
    array-length v14, v1

    add-int/lit8 v4, v14, -0x1

    .line 239
    .local v4, "cntSlash":I
    aget-object v14, v1, v4

    if-eqz v14, :cond_4

    .line 240
    aget-object v14, v1, v4

    const-string/jumbo v15, "[.]"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "attrSplit":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v2, v14

    if-eqz v14, :cond_4

    .line 242
    const/4 v14, 0x0

    aget-object v3, v2, v14

    .line 246
    .end local v1    # "attrSlash":[Ljava/lang/String;
    .end local v2    # "attrSplit":[Ljava/lang/String;
    .end local v4    # "cntSlash":I
    :cond_4
    const-string/jumbo v14, "CscParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v3
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    return-object v4

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 120
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "token":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 126
    return-object v4

    .line 128
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 131
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 136
    return-object v5

    .line 138
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 140
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 141
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 143
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 144
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 146
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    return-object v0

    .line 143
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    return-object v5
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-object v7

    .line 160
    :cond_0
    :try_start_0
    new-instance v4, Lcom/samsung/android/settings/csc/CscParser$CscNodeList;

    invoke-direct {v4}, Lcom/samsung/android/settings/csc/CscParser$CscNodeList;-><init>()V

    .line 161
    .local v4, "list":Lcom/samsung/android/settings/csc/CscParser$CscNodeList;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 163
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 164
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 166
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 167
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 169
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/csc/CscParser$CscNodeList;->appendChild(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 179
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "list":Lcom/samsung/android/settings/csc/CscParser$CscNodeList;
    .end local v5    # "n":I
    :catch_1
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/lang/Exception;
    return-object v7

    .line 178
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v4    # "list":Lcom/samsung/android/settings/csc/CscParser$CscNodeList;
    :cond_2
    return-object v4
.end method
