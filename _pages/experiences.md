---
permalink: /experiences/
title: "Experiences"
author_profile: true
---

<style>
/* Modern tech timeline styling */
.experiences-container {
  max-width: 900px;
  margin: 0 auto;
  padding: 2rem 2rem 2rem 0;
}

/* Timeline */
.timeline {
  position: relative;
  padding-left: 0;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, #d4a574, #b08968);
}

/* Timeline items */
.timeline-item {
  position: relative;
  margin-bottom: 2rem;
  margin-left: 2rem;
  background: #faf9f6;
  border: 1px solid #e8e6e1;
  border-radius: 12px;
  overflow: hidden;
  transition: all 0.3s ease;
}

.timeline-item::before {
  content: '';
  position: absolute;
  left: -2rem;
  top: 1.5rem;
  width: 12px;
  height: 12px;
  background: #b08968;
  border-radius: 50%;
  border: 3px solid #faf9f6;
  box-shadow: 0 0 0 3px #d4a574;
  z-index: 2;
}

.timeline-item:hover {
  box-shadow: 0 8px 25px rgba(176, 137, 104, 0.15);
  transform: translateY(-2px);
  border-color: #d4a574;
}

/* Timeline header (always visible) */
.timeline-header {
  padding: 1.5rem;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 1rem;
  background: #fefefe;
  border-bottom: 1px solid #e8e6e1;
  transition: all 0.3s ease;
}

.timeline-header:hover {
  background: #f8f7f4;
}

.timeline-header.expanded {
  background: #f5f3f0;
  border-bottom-color: #d4a574;
}

.company-logo {
  width: 50px;
  height: 50px;
  border-radius: 8px;
  background: white;
  border: 1px solid #e8e6e1;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  font-size: 1.2rem;
  color: #8b7355;
}

.company-logo img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 8px;
}

.timeline-info {
  flex: 1;
}

.timeline-title {
  font-size: 1.2rem;
  font-weight: 600;
  color: #2d2d2d;
  margin-bottom: 0.25rem;
}

.timeline-company {
  font-size: 1rem;
  color: #b08968;
  font-weight: 500;
  margin-bottom: 0.25rem;
}

.timeline-meta {
  display: flex;
  gap: 1rem;
  font-size: 0.9rem;
  color: #6b6b6b;
  flex-wrap: wrap;
}

.timeline-date {
  background: #f0ede8;
  padding: 0.25rem 0.75rem;
  border-radius: 12px;
  color: #8b7355;
  font-weight: 500;
}

.timeline-location {
  display: flex;
  align-items: center;
  gap: 0.25rem;
}

/* Expand/collapse indicator */
.timeline-toggle {
  width: 24px;
  height: 24px;
  border-radius: 50%;
  background: #b08968;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1rem;
  font-weight: bold;
  transition: all 0.3s ease;
  flex-shrink: 0;
}

.timeline-toggle:hover {
  background: #8b7355;
  transform: scale(1.1);
}

.timeline-toggle.expanded {
  transform: rotate(45deg);
}

/* Timeline content (expandable) */
.timeline-content {
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.3s ease;
  background: #faf9f6;
}

.timeline-content.expanded {
  max-height: 1000px;
}

.timeline-details {
  padding: 1.5rem;
}

.timeline-description {
  color: #4a4a4a;
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.timeline-achievements {
  list-style: none;
  padding: 0;
  margin: 0 0 1.5rem 0;
}

.timeline-achievements li {
  position: relative;
  padding-left: 1.25rem;
  margin-bottom: 0.5rem;
  color: #4a4a4a;
  line-height: 1.5;
}

.timeline-achievements li::before {
  content: '•';
  position: absolute;
  left: 0;
  color: #b08968;
  font-weight: bold;
}

.timeline-skills {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  padding-top: 1rem;
  border-top: 1px solid #e8e6e1;
}

.skill-tag {
  background: #f0ede8;
  color: #8b7355;
  padding: 0.25rem 0.75rem;
  border-radius: 12px;
  font-size: 0.85rem;
  font-weight: 500;
  border: 1px solid #d4a574;
  transition: all 0.3s ease;
}

.skill-tag:hover {
  background: #e8e6e1;
  transform: translateY(-1px);
}

/* Responsive design */
@media (max-width: 768px) {
  .experiences-container {
    padding: 1rem 1rem 1rem 0;
  }
  
  .timeline-item {
    margin-left: 1rem;
  }
  
  .timeline-item::before {
    left: -1rem;
  }
  
  .timeline-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.75rem;
  }
  
  .timeline-meta {
    flex-direction: column;
    gap: 0.5rem;
  }
  
  .timeline-toggle {
    align-self: flex-end;
    margin-top: -2rem;
  }
}

/* Animation for smooth transitions */
@keyframes slideDown {
  from {
    opacity: 0;
    transform: translateY(-10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.timeline-content.expanded .timeline-details {
  animation: slideDown 0.3s ease;
}
</style>

<div class="experiences-container">
  <div class="timeline">
    
    <!-- Work Experience -->

    <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>🏗️</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Incoming</h3>
          <p class="timeline-company">Databricks</p>
          <div class="timeline-meta">
            <span class="timeline-date">Sep. 2025 - Dec. 2025</span>
            <span class="timeline-location">📍 San Francisco</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <ul class="timeline-achievements">
            <li>Excited to join the Databricks team to work on cutting-edge data science and machine learning projects</li>
            <li>Will be contributing to scalable data processing and analytics solutions using the Databricks platform</li>
            <li>Looking forward to gaining hands-on experience with big data technologies and cloud computing</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Data Science</span>
            <span class="skill-tag">Machine Learning</span>
            <span class="skill-tag">Big Data</span>
            <span class="skill-tag">Cloud Computing</span>
            <span class="skill-tag">Python</span>
          </div>
        </div>
      </div>
    </div>

    <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>🦊</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Machine Learning Intern</h3>
          <p class="timeline-company">ZorroFi</p>
          <div class="timeline-meta">
            <span class="timeline-date">Jun. 2025 - Aug. 2025</span>
            <span class="timeline-location">📍 San Francisco</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <ul class="timeline-achievements">
            <li>Building an evaluation framework for a financial LLM agent using LangGraph, Docker, and Microsoft Azure</li>
            <li>Implementing custom chatbot evaluation metrics using LangSmith and LLM-based judgment, enabling A/B
            testing and driving a 15% gain in response reliability</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Python</span>
            <span class="skill-tag">LangChain</span>
            <span class="skill-tag">LangGraph</span>
            <span class="skill-tag">Docker</span>
            <span class="skill-tag">Microsoft Azure</span>
          </div>
        </div>
      </div>
    </div>

    <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>🎵</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Data Science Intern</h3>
          <p class="timeline-company">JamBase</p>
          <div class="timeline-meta">
            <span class="timeline-date">Jan. 2025 - May 2025</span>
            <span class="timeline-location">📍 San Francisco</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <ul class="timeline-achievements">
            <li>Spearheaded development of an intelligent chatbot using Google Cloud Platform, Pinecone, and LangChain</li>
            <li>Engineered a scalable, hybrid query pipeline combining SQL, BigQuery ML, ARIMAX, and Retrieval-Augmented Generation (RAG), improving data analysis time by 50% for 45+ concert managers</li>
            <li>Reduced chatbot latency by 40% through ETL pipeline optimizations and A/B testing of LLM routing strategies and prompt engineering techniques</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Python</span>
            <span class="skill-tag">LLMs</span>
            <span class="skill-tag">Pinecone</span>
            <span class="skill-tag">LangChain</span>
            <span class="skill-tag">BigQuery ML</span>
            <span class="skill-tag">GCP</span>
          </div>
        </div>
      </div>
    </div>

    <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>🎓</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Software Developer Intern</h3>
          <p class="timeline-company">Data Science Undergraduate Studies</p>
          <div class="timeline-meta">
            <span class="timeline-date">Jan. 2025 - Jul. 2025</span>
            <span class="timeline-location">📍 Berkeley</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <ul class="timeline-achievements">
            <li>Created Jupyter notebooks for 45+ campus departments, serving 90+ courses, and 13,000+ students</li>
            <li>Built a web application using JavaScript, HTML, and CSS to organize 300+ past exam problems by their topic, improving efficiency for 4000+ students and enhancing comprehension by 10%</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Jupyter</span>
            <span class="skill-tag">HTML</span>
            <span class="skill-tag">Python</span>
            <span class="skill-tag">CSS</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Leadership Experience -->
    <!-- <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>📊</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Product Manager</h3>
          <p class="timeline-company">Software Products at Cal</p>
          <div class="timeline-meta">
            <span class="timeline-date">2023 - Present</span>
            <span class="timeline-location">📍 UC Berkeley</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <p class="timeline-description">
            Leading product development initiatives and managing software projects for the UC Berkeley community.
          </p>
          <ul class="timeline-achievements">
            <li>Managed product roadmap and feature prioritization</li>
            <li>Led cross-functional teams of developers and designers</li>
            <li>Conducted user research and market analysis</li>
            <li>Coordinated with stakeholders to ensure project success</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Product Management</span>
            <span class="skill-tag">Agile</span>
            <span class="skill-tag">User Research</span>
            <span class="skill-tag">Project Management</span>
          </div>
        </div>
      </div>
    </div> -->

    <!-- Teaching & Education -->
    <!-- <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>📚</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Student Instructor</h3>
          <p class="timeline-company">DATA C8: Foundations of Data Science</p>
          <div class="timeline-meta">
            <span class="timeline-date">2023 - Present</span>
            <span class="timeline-location">📍 UC Berkeley</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <p class="timeline-description">
            Supporting the teaching of foundational data science concepts to undergraduate students at UC Berkeley.
          </p>
          <ul class="timeline-achievements">
            <li>Graded assignments and provided detailed feedback to students</li>
            <li>Held office hours to support student learning</li>
            <li>Assisted in developing course materials and assessments</li>
            <li>Mentored students in data science projects and concepts</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Teaching</span>
            <span class="skill-tag">Data Science</span>
            <span class="skill-tag">Python</span>
            <span class="skill-tag">Mentoring</span>
          </div>
        </div>
      </div>
    </div> -->

    <!-- Research & Projects -->
    <!-- <div class="timeline-item">
      <div class="timeline-header" onclick="toggleTimeline(this)">
        <div class="company-logo">
          <span>🔬</span>
        </div>
        <div class="timeline-info">
          <h3 class="timeline-title">Applied Mathematics Research</h3>
          <p class="timeline-company">UC Berkeley</p>
          <div class="timeline-meta">
            <span class="timeline-date">2023 - Present</span>
            <span class="timeline-location">📍 Berkeley, CA</span>
          </div>
        </div>
        <div class="timeline-toggle">+</div>
      </div>
      <div class="timeline-content">
        <div class="timeline-details">
          <p class="timeline-description">
            Conducting research in applied mathematics with focus on mathematical modeling and computational methods.
          </p>
          <ul class="timeline-achievements">
            <li>Developed mathematical models for complex systems analysis</li>
            <li>Implemented computational algorithms for optimization problems</li>
            <li>Collaborated with faculty on research publications</li>
            <li>Presented findings at academic conferences and seminars</li>
          </ul>
          <div class="timeline-skills">
            <span class="skill-tag">Mathematical Modeling</span>
            <span class="skill-tag">Optimization</span>
            <span class="skill-tag">MATLAB</span>
            <span class="skill-tag">Research</span>
          </div>
        </div>
      </div>
    </div> -->

  </div>
</div>

<script>
function toggleTimeline(header) {
  const item = header.parentElement;
  const content = item.querySelector('.timeline-content');
  const toggle = header.querySelector('.timeline-toggle');
  
  // Toggle expanded state
  const isExpanded = content.classList.contains('expanded');
  
  if (isExpanded) {
    // Collapse
    content.classList.remove('expanded');
    header.classList.remove('expanded');
    toggle.classList.remove('expanded');
    toggle.textContent = '+';
  } else {
    // Expand
    content.classList.add('expanded');
    header.classList.add('expanded');
    toggle.classList.add('expanded');
    toggle.textContent = '−';
  }
}

// Optional: Add keyboard support
document.addEventListener('keydown', function(e) {
  if (e.key === 'Enter' || e.key === ' ') {
    const focusedElement = document.activeElement;
    if (focusedElement.classList.contains('timeline-header')) {
      e.preventDefault();
      toggleTimeline(focusedElement);
    }
  }
});
</script>
