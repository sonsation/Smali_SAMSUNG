.class Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BigPondParseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler$BigPondItemInfo;
    }
.end annotation


# instance fields
.field private mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

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

.field private mInItem:Z

.field private mInLink:Z

.field private mInTitle:Z

.field private mLinkStr:Ljava/lang/String;

.field private mListCount:I

.field private mTitleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItemList:Ljava/util/List;

    .line 28
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInItem:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInTitle:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInLink:Z

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mListCount:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mLinkStr:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mTitleStr:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItemList:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 115
    const-string v0, ""

    .line 117
    .local v0, "chString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/String;

    .end local v0    # "chString":Ljava/lang/String;
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 121
    .restart local v0    # "chString":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInTitle:Z

    if-eqz v2, :cond_1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mTitleStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "strBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mTitleStr:Ljava/lang/String;

    .line 128
    .end local v1    # "strBuffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInLink:Z

    if-eqz v2, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mLinkStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v1    # "strBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mLinkStr:Ljava/lang/String;

    .line 134
    .end local v1    # "strBuffer":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 89
    const-string v2, "item"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iput-boolean v4, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInItem:Z

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mLinkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->setLink(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mTitleStr:Ljava/lang/String;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "str":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "addNumberToTitle":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mListCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mListCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->setArtist(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->setTitle(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItemList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v0    # "addNumberToTitle":Ljava/lang/StringBuilder;
    .end local v1    # "str":[Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInItem:Z

    if-eqz v2, :cond_1

    .line 105
    const-string/jumbo v2, "title"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iput-boolean v4, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInTitle:Z

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    const-string v2, "link"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iput-boolean v4, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInLink:Z

    goto :goto_0
.end method

.method public getChannelItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItemList:Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mListCount:I

    .line 59
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 64
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInItem:Z

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mLinkStr:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mTitleStr:Ljava/lang/String;

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInItem:Z

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iput-boolean v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInTitle:Z

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    const-string v0, "link"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mInLink:Z

    goto :goto_0

    .line 76
    :cond_3
    const-string/jumbo v0, "thumbnail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondParseHandler;->mBigPondItem:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    const-string/jumbo v1, "url"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->setImage(Ljava/lang/String;)V

    goto :goto_0
.end method
