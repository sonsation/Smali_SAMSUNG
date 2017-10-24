.class public Landroid/app/wallpaperbackup/GenerateXML;
.super Ljava/lang/Object;
.source "GenerateXML.java"


# static fields
.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LOCKSCREEN_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "image_path"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final OBJECT_LIST_TAG:Ljava/lang/String; = "User"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field private static final TAG:Ljava/lang/String; = "GenerateXML"

.field public static final TOP:Ljava/lang/String; = "top"

.field private static final TOP_TAG:Ljava/lang/String; = "Wallpapers"

.field private static final TOP_TAG_LOCK:Ljava/lang/String; = "lockscreen"

.field public static final WALLPAPER_LOCK_ORI_XML_NAME:Ljava/lang/String; = "lockscreen_original.xml"

.field public static final WALLPAPER_LOCK_XML_NAME:Ljava/lang/String; = "lockscreen.xml"

.field public static final WALLPAPER_ORI_XML_NAME:Ljava/lang/String; = "wallpaper_original.xml"

.field public static final WALLPAPER_XML_NAME:Ljava/lang/String; = "wallpaper.xml"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mUserList:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/wallpaperbackup/WallpaperUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/app/wallpaperbackup/GenerateXML;->mUserList:Ljava/util/ArrayList;

    .line 68
    return-void
.end method


# virtual methods
.method public createResultFile(Ljava/lang/String;II)V
    .locals 7
    .param p1, "strPath"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "mode"    # I

    .prologue
    .line 169
    const-string/jumbo v4, "GenerateXML"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "xmlDirLast":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    const-string/jumbo v4, "GenerateXML"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "folder created last"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    const/4 v3, 0x0

    .line 177
    .local v3, "xmlFileName":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    .line 178
    if-nez p3, :cond_1

    .line 179
    const-string/jumbo v3, "wallpaper.xml"

    .line 199
    .end local v3    # "xmlFileName":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    const-string/jumbo v4, "GenerateXML"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "filePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/wallpaperbackup/GenerateXML;->generateResultXML(Ljava/io/File;II)V

    .line 168
    return-void

    .line 188
    .end local v1    # "file":Ljava/io/File;
    .restart local v3    # "xmlFileName":Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_1

    .line 189
    const-string/jumbo v3, "lockscreen.xml"

    .local v3, "xmlFileName":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v3    # "xmlFileName":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public generateResultXML(Ljava/io/File;II)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "which"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v10, 0x1

    .line 76
    const-string/jumbo v7, "GenerateXML"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateResultXML file = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 79
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v4, 0x0

    .line 80
    .local v4, "topTAG":Ljava/lang/String;
    if-ne p2, v10, :cond_3

    .line 81
    const-string/jumbo v4, "Wallpapers"

    .line 86
    .local v4, "topTAG":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 88
    .local v5, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v5    # "writer":Ljava/io/FileWriter;
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 91
    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    const-string/jumbo v7, ""

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    iget-object v7, p0, Landroid/app/wallpaperbackup/GenerateXML;->mUserList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "object$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/wallpaperbackup/WallpaperUser;

    .line 95
    .local v1, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const-string/jumbo v7, ""

    const-string/jumbo v8, "User"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string/jumbo v7, ""

    const-string/jumbo v8, "ID"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    if-ne p2, v10, :cond_0

    .line 99
    const-string/jumbo v7, ""

    const-string/jumbo v8, "width"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperUser;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string/jumbo v7, ""

    const-string/jumbo v8, "width"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string/jumbo v7, ""

    const-string/jumbo v8, "height"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperUser;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string/jumbo v7, ""

    const-string/jumbo v8, "height"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string/jumbo v7, ""

    const-string/jumbo v8, "name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperUser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string/jumbo v7, ""

    const-string/jumbo v8, "name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string/jumbo v7, ""

    const-string/jumbo v8, "component"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperUser;->getComponent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string/jumbo v7, ""

    const-string/jumbo v8, "component"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    :cond_0
    const/4 v7, 0x2

    if-ne p2, v7, :cond_1

    .line 117
    const-string/jumbo v7, ""

    const-string/jumbo v8, "image_path"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v7, ""

    const-string/jumbo v8, "image_path"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    :cond_1
    const-string/jumbo v7, ""

    const-string/jumbo v8, "User"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 151
    .end local v1    # "object":Landroid/app/wallpaperbackup/WallpaperUser;
    .end local v2    # "object$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 152
    .end local v6    # "writer":Ljava/io/FileWriter;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v5, :cond_2

    .line 156
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 157
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 83
    .local v4, "topTAG":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "lockscreen"

    .local v4, "topTAG":Ljava/lang/String;
    goto/16 :goto_0

    .line 149
    .restart local v2    # "object$iterator":Ljava/util/Iterator;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :cond_4
    :try_start_4
    const-string/jumbo v7, ""

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    if-eqz v6, :cond_5

    .line 156
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 157
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_4
    move-object v5, v6

    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v5, "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 159
    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v2    # "object$iterator":Ljava/util/Iterator;
    .end local v6    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 155
    :goto_5
    if-eqz v5, :cond_6

    .line 156
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 157
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 153
    :cond_6
    :goto_6
    throw v7

    .line 159
    :catch_3
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 151
    .local v5, "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
