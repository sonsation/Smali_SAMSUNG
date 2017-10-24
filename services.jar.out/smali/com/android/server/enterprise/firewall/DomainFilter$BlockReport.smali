.class Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockReport"
.end annotation


# instance fields
.field private mTimeStamp:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1885
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    .line 1886
    iput-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    .line 1887
    iput-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    .line 1884
    return-void
.end method


# virtual methods
.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z
    .locals 3
    .param p1, "br"    # Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .prologue
    const/4 v2, 0x0

    .line 1903
    if-nez p1, :cond_0

    .line 1904
    return v2

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1909
    :cond_1
    return v2

    .line 1908
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1912
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1916
    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1918
    :cond_5
    return v2

    .line 1913
    :cond_6
    return v2

    .line 1917
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1921
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1925
    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1927
    :cond_a
    return v2

    .line 1922
    :cond_b
    return v2

    .line 1926
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1930
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1934
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 1931
    :cond_f
    return v2
.end method
