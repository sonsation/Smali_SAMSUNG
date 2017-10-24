.class public Landroid/app/wallpaperbackup/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentElement:Z

.field private mCurrentValue:Ljava/lang/String;

.field private mItem:Landroid/app/wallpaperbackup/WallpaperUser;

.field private mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 51
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 42
    const-string/jumbo v10, "XmlParser"

    iput-object v10, p0, Landroid/app/wallpaperbackup/XmlParser;->TAG:Ljava/lang/String;

    .line 43
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 44
    const-string/jumbo v10, ""

    iput-object v10, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 45
    iput-object v11, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    .line 46
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/app/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .line 54
    .local v8, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x0

    .line 56
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 57
    .local v7, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 58
    .local v9, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v9, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 60
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 62
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Lorg/xml/sax/InputSource;

    .end local v4    # "fis":Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v6, "objSource":Lorg/xml/sax/InputSource;
    invoke-interface {v9, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 76
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "objSource":Lorg/xml/sax/InputSource;
    :goto_0
    if-eqz v4, :cond_0

    .line 77
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_1
    return-void

    .line 66
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .restart local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    :cond_1
    :try_start_3
    const-string/jumbo v10, "XmlParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "xml file is not exists. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v1

    .line 69
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    if-eqz v4, :cond_0

    .line 77
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .restart local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 73
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 76
    if-eqz v4, :cond_0

    .line 77
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 79
    :catch_4
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    .line 71
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 76
    if-eqz v4, :cond_0

    .line 77
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 79
    :catch_6
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v10

    .line 76
    :goto_5
    if-eqz v4, :cond_2

    .line 77
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 74
    :cond_2
    :goto_6
    throw v10

    .line 79
    :catch_7
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .restart local v9    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 68
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 70
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Lorg/xml/sax/SAXException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 72
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 142
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 116
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setWidth(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setHeight(I)V

    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    const-string/jumbo v0, "component"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_4
    const-string/jumbo v0, "image_path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setImagePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getObject()Landroid/app/wallpaperbackup/WallpaperUser;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 102
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "User"

    .line 106
    .local v0, "objListTag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-direct {v1}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>()V

    iput-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    .line 108
    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method
