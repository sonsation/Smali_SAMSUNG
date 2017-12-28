.class Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
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
    name = "IsIgnorableIterator"
.end annotation


# instance fields
.field private mEmpty:Z

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 1

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$IsIgnorableIterator;)V
    .locals 0

    .prologue
    .line 2064
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return v0
.end method

.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .param p1, "elem"    # Lcom/android/vcard/VCardEntry$EntryElement;

    .prologue
    const/4 v0, 0x0

    .line 2085
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2086
    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    .line 2090
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 2081
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .param p1, "label"    # Lcom/android/vcard/VCardEntry$EntryLabel;

    .prologue
    .line 2077
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 2073
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 2069
    return-void
.end method
