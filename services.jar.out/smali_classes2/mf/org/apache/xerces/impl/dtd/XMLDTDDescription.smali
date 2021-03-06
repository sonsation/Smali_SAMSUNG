.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XMLDTDDescription.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;


# instance fields
.field protected fPossibleRoots:Ljava/util/ArrayList;

.field protected fRootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 44
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 44
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 52
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p0, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 44
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 115
    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 129
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 151
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 156
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 159
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 164
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 167
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_3
    return v2

    .line 117
    :cond_4
    return v2

    .line 122
    :cond_5
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 125
    :cond_6
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    return v2

    .line 122
    :cond_7
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 123
    return v2

    .line 130
    :cond_8
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 135
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 141
    :goto_0
    if-ge v1, v3, :cond_b

    .line 142
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    iget-object v4, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    if-nez v0, :cond_b

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return v2

    .line 136
    :cond_a
    return v2

    .line 146
    :cond_b
    if-nez v0, :cond_0

    return v2

    .line 152
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    return v2

    .line 157
    :cond_d
    return v2

    .line 160
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    return v2

    .line 165
    :cond_f
    return v2
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    .line 75
    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 184
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPossibleRoots(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public setPossibleRoots(Ljava/util/Vector;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 99
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public setRootName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 89
    return-void
.end method
