.class Lcom/android/vcard/VCardEntry$ToStringIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToStringIterator"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mFirstElement:Z

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$ToStringIterator;)V
    .locals 0

    .prologue
    .line 2099
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .param p1, "elem"    # Lcom/android/vcard/VCardEntry$EntryElement;

    .prologue
    .line 2118
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    if-nez v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    .line 2122
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 3
    .param p1, "label"    # Lcom/android/vcard/VCardEntry$EntryLabel;

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$EntryLabel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    .line 2114
    return-void
.end method

.method public onIterationEnded()V
    .locals 2

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "]]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    return-void
.end method

.method public onIterationStarted()V
    .locals 3

    .prologue
    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 2107
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[[hash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
