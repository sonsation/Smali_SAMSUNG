.class Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;
.super Ljava/lang/Object;
.source "BigPondTopTenParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser$BIGPOND_RESPONSE_RESULT;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpBigPondTop10Parser"


# instance fields
.field private mBigPondItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImageIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "getList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)I
    .locals 12
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v5, 0x1

    .line 71
    .local v5, "responseCode":I
    const-string v9, "MpBigPondTop10Parser"

    const-string v10, "getData()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 76
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 77
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 78
    .local v8, "xmlreader":Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;

    iget-object v9, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    invoke-direct {v6, v9}, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;-><init>(Ljava/util/List;)V

    .line 79
    .local v6, "theRssHandler":Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;
    invoke-interface {v8, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 80
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 81
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v3, "is":Lorg/xml/sax/InputSource;
    invoke-interface {v8, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 84
    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->getChannelItem()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    const/4 v5, 0x3

    .line 95
    if-eqz v2, :cond_1

    .line 97
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "is":Lorg/xml/sax/InputSource;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "theRssHandler":Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "xmlreader":Lorg/xml/sax/XMLReader;
    :cond_1
    :goto_0
    return v5

    .line 98
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3    # "is":Lorg/xml/sax/InputSource;
    .restart local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v6    # "theRssHandler":Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "xmlreader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "is":Lorg/xml/sax/InputSource;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "theRssHandler":Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "xmlreader":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_2
    const-string v9, "MpBigPondTop10Parser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getData() MalformedURLException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const/4 v5, 0x4

    .line 95
    if-eqz v2, :cond_1

    .line 97
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v9, "MpBigPondTop10Parser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getData() Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    const/4 v5, 0x4

    .line 95
    if-eqz v2, :cond_1

    .line 97
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 98
    :catch_4
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_2

    .line 97
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 100
    :cond_2
    :goto_1
    throw v9

    .line 98
    :catch_5
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setImage()I
    .locals 11

    .prologue
    .line 109
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 110
    iget-object v8, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 111
    .local v7, "temp":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    if-nez v7, :cond_0

    .line 112
    const/4 v6, 0x7

    .line 139
    .end local v7    # "temp":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    :goto_1
    return v6

    .line 114
    .restart local v7    # "temp":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    :cond_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, "imageURL":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 117
    .local v2, "conn":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 118
    const-string v8, "MpBigPondTop10Parser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setImage() Image conntect success "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 120
    .local v1, "buff":Ljava/io/BufferedInputStream;
    const-string v8, "MpBigPondTop10Parser"

    const-string/jumbo v9, "setImage() BufferedInputStream success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 123
    const-string v8, "MpBigPondTop10Parser"

    const-string/jumbo v9, "setImage() Image is null "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    const-string v8, "MpBigPondTop10Parser"

    const-string/jumbo v9, "setImage() setBitmap"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 132
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "buff":Ljava/io/BufferedInputStream;
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v5    # "imageURL":Ljava/net/URL;
    .end local v7    # "temp":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/net/MalformedURLException;
    const-string v8, "MpBigPondTop10Parser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setImage() MalformedURLException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v6, 0x7

    .line 138
    .local v6, "responseCode":I
    goto/16 :goto_1

    .line 131
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "responseCode":I
    :cond_2
    const/4 v6, 0x6

    .restart local v6    # "responseCode":I
    goto/16 :goto_1

    .line 135
    .end local v6    # "responseCode":I
    :catch_1
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "MpBigPondTop10Parser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setImage() IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v6, 0x7

    .restart local v6    # "responseCode":I
    goto/16 :goto_1
.end method

.method public setNextImage(Z)I
    .locals 14
    .param p1, "first"    # Z

    .prologue
    const/16 v13, 0xa

    const/4 v8, 0x7

    const/4 v10, 0x0

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iput v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    .line 149
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    if-gt v10, v11, :cond_2

    .line 208
    :cond_1
    :goto_0
    return v8

    .line 153
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    iget v11, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 154
    .local v9, "temp":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    if-eqz v9, :cond_1

    .line 157
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getImage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    .local v6, "imageURL":Ljava/net/URL;
    const/16 v0, 0xa

    .line 160
    .local v0, "MAX_ERROR_COUNT":I
    const/4 v5, 0x0

    .line 161
    .local v5, "error_count":I
    const/4 v7, 0x0

    .line 162
    .local v7, "inputStream":Ljava/io/InputStream;
    :cond_3
    if-ge v5, v13, :cond_4

    .line 164
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 165
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 166
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 178
    .end local v3    # "conn":Ljava/net/URLConnection;
    :cond_4
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v2, "buff":Ljava/io/BufferedInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 180
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_7

    .line 181
    const-string v10, "MpBigPondTop10Parser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setImage() Image is null, mImageIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_1
    if-eqz v2, :cond_5

    .line 188
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 190
    :cond_5
    if-eqz v7, :cond_6

    .line 191
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 194
    :cond_6
    const/4 v8, 0x5

    .line 195
    .local v8, "responseCode":I
    iget v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    .line 197
    iget v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    iget-object v11, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 198
    const/4 v10, 0x0

    iput v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    .line 199
    const/4 v8, 0x6

    goto :goto_0

    .line 168
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "buff":Ljava/io/BufferedInputStream;
    .end local v8    # "responseCode":I
    :catch_0
    move-exception v4

    .line 169
    .local v4, "e":Ljava/io/IOException;
    add-int/lit8 v5, v5, 0x1

    .line 170
    const-string v10, "MpBigPondTop10Parser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setImage() IOException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error_count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-ne v5, v13, :cond_3

    .line 173
    const/4 v8, 0x7

    .line 174
    .restart local v8    # "responseCode":I
    goto/16 :goto_0

    .line 183
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "responseCode":I
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "buff":Ljava/io/BufferedInputStream;
    :cond_7
    iget-object v10, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mBigPondItemList:Ljava/util/List;

    iget v11, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    const-string v10, "MpBigPondTop10Parser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setImage() setBitmap, mImageIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->mImageIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 201
    .end local v0    # "MAX_ERROR_COUNT":I
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "buff":Ljava/io/BufferedInputStream;
    .end local v5    # "error_count":I
    .end local v6    # "imageURL":Ljava/net/URL;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "temp":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    :catch_1
    move-exception v4

    .line 202
    .local v4, "e":Ljava/net/MalformedURLException;
    const-string v10, "MpBigPondTop10Parser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setImage() MalformedURLException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v8, 0x7

    .line 207
    .restart local v8    # "responseCode":I
    goto/16 :goto_0

    .line 204
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .end local v8    # "responseCode":I
    :catch_2
    move-exception v4

    .line 205
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "MpBigPondTop10Parser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setImage() IOException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v8, 0x7

    .restart local v8    # "responseCode":I
    goto/16 :goto_0
.end method
